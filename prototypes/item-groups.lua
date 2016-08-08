data:extend({

  -- Groups related to collecting and basic processing or ressources
  -- These groups should contain the machines necessary for the process,
  -- not the items themselfes. Since those are not as commonly used.
  {
    type = "item-group",
    name = "zythum-collecting",
    order = "zy-a",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-logistics",
    order = "zy-b",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-automation",
    order = "zy-c",
    icon = "__zythum__/assets/categories/placeholder.png",
  },


  -- Groups related to processing and advancing resources
  -- These group should contain machines necessary for producing intermediate
  -- and more advanced products from the basic items and resources.
  {
    type = "item-group",
    name = "zythum-production",
    order = "zy-d",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-energy",
    order = "zy-e",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-chemistry",
    order = "zy-f",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-intermediate",
    order = "zy-g",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-modules",
    order = "zy-h",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-vehicles",
    order = "zy-i",
    icon = "__zythum__/assets/categories/placeholder.png",
  },


  -- Groups related to simple resources themselfes.
  -- These groups should contain resources that are not commonly crafted
  -- in hand too much, they become more relevant in filter inserters
  {
    type = "item-group",
    name = "zythum-resources",
    order = "zy-j",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-plates",
    order = "zy-k",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-liquids",
    order = "zy-l",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-alien",
    order = "zy-m",
    icon = "__zythum__/assets/categories/placeholder.png",
  },


  -- Groups related to attack, defense and warfare.
  -- These groups should contain everything related to kicking alien ass
  {
    type = "item-group",
    name = "zythum-defense",
    order = "zy-n",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-armory",
    order = "zy-o",
    icon = "__zythum__/assets/categories/placeholder.png",
  },


  -- Other groups that don't fit any specific category
  {
    type = "item-group",
    name = "zythum-decorative",
    order = "zy-p",
    icon = "__zythum__/assets/categories/placeholder.png",
  },

  {
    type = "item-group",
    name = "zythum-other",
    order = "zy-q",
    icon = "__zythum__/assets/categories/placeholder.png",
  },
})



-- Automatically generate 10 rows of subgroups for all zythum categories
for group in pairs(data.raw['item-group']) do
  if string.sub(group, 0, 6) == 'zythum' then
    for i = 1, 10 do 
      data:extend({
          {
            type = "item-subgroup",
            name = group .. '-' .. i,
            group = group,
            order = i
          },
        })
    end
  end
end
