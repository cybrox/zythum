-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: prototypes/item-groups.lua
-- desc: Generate item groups and subgroups at the right place for the game


-- Automatically generate item groups from config
for index, group in pairs(zythum_cfg_newitemgroups) do
  local group_icon = (zythum_cfg_enabledebug) and 'placeholder' or group

  data:extend({{
    type = "item-group",
    name = group,
    order = 'zy_' .. zythum_order(index),
    icon = '__zythum__/assets/categories/' .. group_icon .. '.png',
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
