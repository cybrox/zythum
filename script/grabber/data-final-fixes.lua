-- zythum grabber
-- grab mod info for zythum
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: script/grabber/data-final-fixes.lua
-- desc: Grab all mod information


-- Get a list for all keys that can be ignored
loaded_items = {}
unique_items = {}
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
    local is_sortedalready = false
    for i, item in pairs(zythum_list) do
      if item == element.name then is_basemoditem = true end
    end

    if element.subgroup ~= nil then
      if string.sub(element.subgroup, 1, 6) == 'zythum' then is_sortedalready = true end
    end
    
    if is_basemoditem == false and is_sortedalready == false then
      table.insert(loaded_items, element.name)
    end
  end
end

-- Make sure all values in the table are unique
for index, item in pairs(loaded_items) do
  does_exist = false

  for _, x in pairs(unique_items) do
    if x == item then does_exist=true end
  end

  if does_exist == false then table.insert(unique_items, item) end
end

-- Output our unique list of items
for index, item in pairs(unique_items) do
  print('zythumgrab>' .. item)
end
