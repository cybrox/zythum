--
-- Update script for zythum
-- Compare factorio modbase and local mod support
--

base = 'https://mods.factorio.com'
mapi = '/api/mods?q=&tags=&order=alpha&page_size=25&page='
http = require('socket.http')
sock = require('socket')
json = require('lunajson')

modsite_mods = {}
ignored_mods = {}
updates_mods = ''

do_single = (arg[1] ~= nil)
do_page = (do_single and arg[1] or 1)


function load_ign_mods ()
  local blacklist = io.open('script/blacklist.json', 'r')
  if blacklist ~= nil then
    local payload = blacklist:read("*all")
    blacklist:close()

    ignored_mods = json.decode(payload)
  else
    ignored_mods = {blacklist = {}}
  end
end


function load_api_page (page)
  local payload = http.request(base .. mapi .. page)
  local data = json.decode(payload)
  return data
end


function store_api_page (results)
  for index, mod in pairs(results) do
    local obj = {
      name = mod.title,
      find = mod.name,
      owner = mod.owner,
      link = base .. '/mods/' .. url_encode(mod.owner) .. '/' .. url_encode(mod.name),
      download = base .. mod.latest_release.download_url,
      factorio_version = mod.latest_release.info_json.factorio_version,
      version = mod.latest_release.info_json.version
    }

    table.insert(modsite_mods, obj)
  end
end


function version_is_bigger(latest, base)
  local is_bigger = false
  local latest_t = {}
  local base_t = {}

  for n in string.gmatch(latest, '[0-9]+') do table.insert(latest_t, n) end
  for n in string.gmatch(base, '[0-9]+') do table.insert(base_t, n) end

  for i, n in pairs(latest_t) do
    if base_t[i] ~= nil then
      if n > base_t[i] then is_bigger = true end
    end
  end

  return is_bigger
end


function url_encode (str)
   if (str) then
      str = string.gsub (str, "\n", "\r\n")
      str = string.gsub (str, "([^%w ])",
         function (c) return string.format ("%%%02X", string.byte(c)) end)
      str = string.gsub (str, " ", "+")
   end
   return str    
end


function file_exists (file)
  local finame = file:gsub(' ', '+')
  local handle = io.open('mods/' .. finame .. '.lua', 'r')
  
  if handle ~= nil then
    local data = handle:read("*all")
    local vers = '0.0.0'

    io.close(handle)

    vers = string.match(data, '[0-9]+%.[0-9]+%.[0-9]+')
    if vers == nil then vers = '0.0.0' end

    return {
      name = file,
      version = vers
    }
  else
    return nil
  end
end


function fprint (str)
  updates_mods = updates_mods .. str .. '\n'
end

-- Load all mods from the ignore list
print('OK: Fetching local blacklist database')
load_ign_mods()


-- Request first page in order to get data and number of pages
print('OK: Fetching factorio mod database ' .. do_page .. '/?')
data = load_api_page(do_page)
napi = data.pagination.page_count
store_api_page(data.results)
print('OK: Fetching factorio mod database 1/' .. napi)

-- Request the remaining pages in order to get all mod information
if do_single == false then
  for i = 2, napi do
    sock.sleep(10)
    local data = load_api_page(i)
    store_api_page(data.results)
    print('OK: Fetching factorio mod database ' .. i .. '/' .. napi)
  end
end


-- Finally, compare all of our modsets against eachother and report changes
for index, mod in pairs(modsite_mods) do
  local is_indexed = file_exists(mod.find)

  -- Check if the current mod is on any ignore list
  local is_blacklisted = false
  for index, bmod in pairs(ignored_mods.blacklist) do
    if mod.find == bmod then is_blacklisted = true end
  end

  if is_blacklisted == false then
    local type_string = ((is_indexed == nil) and 'NM' or 'NV')
    local vers_string = ((is_indexed == nil) and ' ' or ' > ' .. is_indexed.version .. ' ')

    if is_indexed == nil or version_is_bigger(mod.version, is_indexed.version) then
      fprint('OK: ' .. type_string .. ': ' .. mod.name .. ' ' .. mod.version .. vers_string .. '('.. mod.link .. ')')
    end
  end
end


-- Write generated mod update report into temporary file
print('OK: Writing update report file in project root')
f_output = io.open('update.txt', 'w')
f_output:write(updates_mods)
f_output:close()
