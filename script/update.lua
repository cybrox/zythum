--!/bin/bash
--
-- Update script for zythum
-- Compare factorio modbase and local mod support
--

base = 'https://mods.factorio.com'
mapi = '/api/mods?q=&tags=&order=alpha&page_size=25&page='
http = require('socket.http')
sock = require('socket')
json = require('json')

modsite_mods = {}
projcet_mods = {}
ignored_mods = {}
updates_mods = ''

function load_mod_mods ()
  local readme = io.open('README.md', 'r')
  local payload = readme:read("*all")
  readme:close()

  for i in string.gmatch(payload, '\n%- +%[[^`]+`[^`]+`') do
    local name = string.sub(string.match(i, '%[.*%]'), 2, -2)
    local vers = string.match(i, '[0-9]+%.[0-9]+%.[0-9]+')

    local obj = {
      name = name,
      version = vers
    }

    table.insert(projcet_mods, obj)
  end
end


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


function fprint (str)
  updates_mods = updates_mods .. str .. '\n'
end


-- Request first page in order to get data and number of pages
print('OK: Fetching factorio mod database 0/?')
data = load_api_page(1)
napi = data.pagination.page_count
store_api_page(data.results)
print('OK: Fetching factorio mod database 1/' .. napi)

-- Request the remaining pages in order to get all mod information
for i = 2, napi do
  sock.sleep(10)
  local data = load_api_page(i)
  store_api_page(data.results)
  print('OK: Fetching factorio mod database ' .. i .. '/' .. napi)
end

-- Load all implemented mods from the readme file
print('OK: Fetching local mod database')
load_mod_mods()

-- Load all mods from the ignore list
print('OK: Fetching local blacklist database')
load_ign_mods()




-- Finally, compare all of our modsets against eachother and report changes
for index, mod in pairs(modsite_mods) do

  -- Check if the current mod is on any ignore list
  local is_blacklisted = false
  for index, bmod in pairs(ignored_mods.blacklist) do
    if mod.find == bmod then is_blacklisted = true end
  end

  -- If our mod is not blacklisted, check if it exists in our repo
  if is_blacklisted == false then
    local is_indexed = nil
    for index, lmod in pairs(projcet_mods) do
      if mod.find == lmod.name then is_indexed = lmod end
    end

    -- Output a require warning, if the mod was not yet indexed by us
    if is_indexed == nil then
      fprint('OK: Found new mod version: ' .. mod.name .. ' ' .. mod.version .. ' > 0.0.0!')
      fprint('OK: (FV ' .. mod.factorio_version .. ') -> ' .. mod.find)
      fprint('OK: ' .. mod.link)
      fprint('OK: ' .. mod.download)
      fprint('')
    else
      if version_is_bigger(mod.version, is_indexed.version) then
        fprint('OK: Found new mod version: ' .. mod.name .. ' '.. mod.version .. ' > ' .. is_indexed.version) 
        fprint('OK: ' .. mod.link)
        fprint('OK: ' .. mod.download)
        fprint('')
      end
    end
  end
end

-- Write generated mod update report into temporary file
print('OK: Writing update report file in project root')
f_output = io.open('update.txt', 'w')
f_output:write(updates_mods)
f_output:close()
