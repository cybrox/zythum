-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: core/sorter.lua
-- desc: Helper function for item sorting


--- Configure the script to use certain mod data.
-- This function is used to configure zythum to use certain
-- mod data for the following recipes. This is used to apply
-- a mod name string to the sort string, so items are sorted.
-- @param modname The name of the mod to sort
function zythum_sort_mod (modname)
  local oldmod = zythum_sortmod or 'none'

  zythum_sortmod = string.sub(modname, 0, 8)

  zythum_log(' ')
  zythum_log('mod: ' .. oldmod .. ' -> ' .. zythum_sortmod)
end


--- Find a recipe in the data blob.
-- This function will search for a recipe with all common
-- names and return its data object. If no recipe is found,
-- the function will output a message
-- @param item The name of the item to find
-- @param force If enabeld, find somethign other than a recipe
-- @return table Table for the item's data
function zythum_find (item, force)
  for index, filter in pairs(zythum_cfg_datafindgroups) do
    if force == false or index ~= 1 then
      if data.raw[filter][item] then return filter, item end
    end
  end

  zythum_log('itm: ' .. item .. ' -> ?')
end


--- Actually sort an item into a group.
-- This function will actually sort the given item into its
-- new group, subgroup and order
-- @param group The group of the item
-- @param row The row of the item in the group
-- @param order The position of the item in the row
-- @param item The name of the recipe in the data table
function zythum_sort (group, row, order, item)
  local group_final = 'zythum-' .. group .. '-' .. row
  local order_final = zythum_sortmod .. '_' .. zythum_order(order)
  local data_final, item_final = zythum_find(item, false)

  -- ignore items that are not found!
  if item_final == nil then return end

  zythum_log('itm: ' .. item_final .. ' -> ' .. group_final)
  
  data.raw[data_final][item_final].subgroup = group_final
  data.raw[data_final][item_final].order = order_final

  -- if we sorted a recipe, we also want to sort the item!
  if data_final == 'recipe' then
    local data_final, item_final = zythum_find(item, true)
    if data_final ~= nil then
      data.raw[data_final][item_final].subgroup = group_final
      data.raw[data_final][item_final].order = order_final
      zythum_log('spc: ' .. item_final .. ' -> ' .. group_final)
    end
  end
end


--- Get an order letter from a provided number
-- This function will return a letter based on the input number in
-- order to correctly sort items and categories in the UI
-- @param number the input number
function zythum_order (number)
  if number > 24 then return 'z' end
  return string.sub('abcdefghijklmnopqrstuvxyz', number, number)
end


--- Realign all subgroups that are out of order.
-- When statically assigning groups to recipes, there might me rows
-- in the UI with not items at all. Depending on how factorio handles
-- that, there might be empty rows.
function zythum_realign ( )

end
