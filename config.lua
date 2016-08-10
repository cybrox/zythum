-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: config.lua
-- desc: Mod config


-- Enable debugging when the mod is loaded
zythum_cfg_enabledebug = true


-- Number of subgroups (rows) for every custom group
zythum_cfg_numsubgroups = 10


-- List of keys in the global data array to search in
zythum_cfg_datafindgroups = {
  'recipe',
  'item',
  'fluid',

  'gun',
  'ammo',
  'armor',
  'tool',
  'module',
  'capsule',
  'rail-planner',

  'mining-tool',
  'repair-tool',
  'rail-planner',
  'blueprint-book',
  'blueprint',
  'deconstruction-item'
}


-- List of custom groups to add to the game
zythum_cfg_newitemgroups = {

  -- Groups related to collecting and basic processing or ressources
  -- These groups should contain the machines necessary for the process,
  -- not the items themselfes. Since those are not as commonly used.
  "zythum-collecting",
  "zythum-transport",
  "zythum-logistics",
  "zythum-automation",

  -- Groups related to processing and advancing resources
  -- These group should contain machines necessary for producing intermediate
  -- and more advanced products from the basic items and resources.
  "zythum-production",
  "zythum-energy",
  "zythum-chemistry",
  "zythum-intermediate",
  "zythum-modules",
  "zythum-vehicles",

  -- Groups related to simple resources themselfes.
  -- These groups should contain resources that are not commonly crafted
  -- in hand too much, they become more relevant in filter inserters
  "zythum-resources",
  "zythum-plates",
  "zythum-liquids",
  "zythum-alien",

  -- Groups related to attack, defense and warfare.
  -- These groups should contain everything related to kicking alien ass
  "zythum-defense",
  "zythum-armory",

  -- Other groups that don't fit any specific category
  "zythum-decorative",
  "zythum-other"
}
