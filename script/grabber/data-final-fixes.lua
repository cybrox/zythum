-- zythum grabber
-- grab mod info for zythum
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: script/grabber/data-final-fixes.lua
-- desc: Grab all mod information


-- Get a list for all keys that can be ignored
zythum_list = {
  'railgun-dart',
  'player-port',
  'railgun',
  'loader',
  'fast-loader',
  'express-loader',
  'small-plane',
  'computer',
  'small-plane',
  'player-port',
  'loader',
  'fast-loader',
  'express-loader',
  'coin',
  'water',
  'crude-oil',
  'heavy-oil',
  'light-oil',
  'petroleum-gas',
  'railgun',
  'tank-cannon',
  'railgun-dart'
}

-- Redefine all core methods
function zythum_sort_mod (x) end
function zythum_sort (x, y, z, item)
  table.insert(zythum_list, item)
end

-- Load zythum copied configuration and base mod info
require('config')
require('baseset')

-- Extract all keys from the global data array
for index, category in pairs(zythum_cfg_datafindgroups) do
  for index, element in pairs(data.raw[category]) do
    local is_basemoditem = false
    for i, item in pairs(zythum_list) do
      if item == element.name then is_basemoditem = true end
    end

    if is_basemoditem == false then
      print('zythumgrab>' .. element.name)
    end
  end
end
