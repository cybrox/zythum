--!/bin/bash
--
-- Import script for zythum
-- Read the modified data and output a draft
--
require('config')

import_base = './import/__final/'
import_path = arg[1] or ''
import_mods = 'none'

if import_path == '' then os.exit() end


data = {}
function data:extend(raw)
  for index, info in pairs(raw) do
    table.insert(data, info)
    ix = info.type .. ':' .. info.name or '?'
    print('OK: ' .. import_path .. ': Loaded prototype from file ' .. import_mods .. ' at ' .. index .. ' ('..ix..')')
  end
end

function crash_trigger()
end


local f = io.popen("ls " .. import_base .. import_path)
for mod in f:lines() do 
  function load_mod ()
    import_mods = string.sub(mod, 0, -5)
    require('import.__final.' .. import_path .. '.' .. import_mods)
  end

  local status, error = pcall(load_mod)
  if status == false then print('ER: ' .. import_path .. ': Failed to load prototypes from file ' .. import_mods) end
end

template_file = io.open('mods/_template.lua', 'r')
template_string = template_file:read("*all")
template_file:close()

already_processed = {}
for index, rawdata in pairs(data) do
  if type(rawdata) == 'table' then
    local is_relevant = false
    local is_done = false
    local in_item = ''

    for index, proc in pairs(already_processed) do
      if proc == rawdata.name then is_done = true end
    end

    if is_done == false then
      for index, element in pairs(zythum_cfg_datafindgroups) do
        if rawdata.type == element then
          is_relevant = true
          in_item = rawdata.name
          table.insert(already_processed, rawdata.name)
        end
      end

      if is_relevant then
        template_string = template_string .. 'zythum_sort(\'CATEGORY\', 00, 00, \'' .. in_item .. '\')\n'
      end
    end
  end
end

local final_count = 0
for _ in pairs(already_processed) do final_count = final_count + 1 end
if final_count == 0 then
  print('OK: ' .. import_path .. ': Loaded no prototypes for mod')
else
  f_output = io.open('import/' .. import_path .. '.lua', 'w')
  f_output:write(template_string)
  f_output:close()
end
