-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: prototypes/item-groups.lua
-- desc: Generate item groups and subgroups at the right place for the game


-- Automatically generate item groups from config
icondir = (zythum_cfg_enablecoloricons and 'colored' or 'grayscale')

for index, group in pairs(zythum_cfg_newitemgroups) do
  data:extend({{
    type = "item-group",
    name = group,
    order = '0zy_' .. zythum_order(index),
    icon = '__zythum__/assets/categories/' .. icondir .. '/' .. group .. '.png',
  }})
end


-- Automatically generate 10 rows of subgroups for all zythum categories
for group in pairs(data.raw['item-group']) do
  if string.sub(group, 0, 6) == 'zythum' then
    for i = 1, zythum_cfg_numsubgroups do
      data:extend({{
        type = "item-subgroup",
        name = group .. '-' .. i,
        group = group,
        order = i
      }})
    end
  end
end
