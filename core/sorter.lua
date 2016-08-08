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
  zythum_sortmod = modname.sub(0, 5)
end


--- Find a recipe in the data blob.
-- This function will search for a recipe with all common
-- names and return its data object. If no recipe is found,
-- the function will output a message
-- @param item The name of the item to find
-- @return table Table for the item's data
function zythum_find (item)
  if data.raw.recipe[item] then return item end

  zythum_log('Failed to find recipe for item ' .. item)
end


--- Actually sort an item into a group.
-- This function will actually sort the given item into its
-- new group, subgroup and order
-- @param item The name of the recipe in the data table
-- @param group The top group of the item
-- @param subgroup The subgroup of the item
-- @param order The order string of the item
function zythum_sort (item, group, subgroup, order)

end


--- Realign all subgroups that are out of order.
-- When statically assigning groups to recipes, there might me rows
-- in the UI with not items at all. Depending on how factorio handles
-- that, there might be empty rows.
function zythum_realign ( )

end
