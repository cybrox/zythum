-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/5dim_resources.lua
-- name: 5dim Resources
-- link: mods.factorio.com/mods/https://mods.factorio.com/mods/McGuten/5dim%5Fresources
-- author: cybrox
-- refver: 0.13.1

zythum_sort_mod('5dim_resources')


-- Recipes for category zythum-production
zythum_sort('production',    01, 01, '5d-furnace')
zythum_sort('production',    01, 02, '5d-electric-furnace')
zythum_sort('production',    01, 03, '5d-masher')
zythum_sort('production',    01, 04, '5d-masher-2')

-- Recipes for category zythum-resources
zythum_sort('resources',    03, 01, '5d-copper-dust')
zythum_sort('resources',    03, 02, '5d-iron-dust')

-- Recipes for category zythum-plates
zythum_sort('plates',       01, 01, '5d-copper-plate')
zythum_sort('plates',       01, 02, '5d-iron-plate')
