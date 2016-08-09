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
    print('OK: Loaded prototype from ' .. import_mods .. ' at ' .. index .. ' ('..ix..')')
  end
end

local f = io.popen("ls " .. import_base .. import_path)
for mod in f:lines() do 
  function load_mod ()
    import_mods = string.sub(mod, 0, -5)
    require('import.__final.' .. import_path .. '.' .. import_mods)
  end

  pcall(load_mod)
end


template_string = '-- zythum sorter\n-- tidy up your factorio ui\n--\n-- file: mods/base.lua\n-- link: factorio.com\n-- author: cybrox\n-- refver: 0.13\n\nzythum_sort_mod(\'MODNAME\')\n\n\n'

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

f_output = io.open('import/' .. import_path .. '.txt', 'w')
f_output:write(template_string)
f_output:close()
