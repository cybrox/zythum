-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/5dim_battlefield.lua
-- name: 5dim's Mod - Battlefield
-- link: https://mods.factorio.com/mods/McGuten/5dim_battlefield
-- author: cybrox
-- refver: 0.13.1

zythum_sort_mod('5dim_battlefield')


-- Recipes for category zythum-vehicles
zythum_sort('vehicles',      05, 01, '5d-tank')

zythum_sort('vehicles',      07, 01, '5d-tank-cannon')
zythum_sort('vehicles',      07, 02, '5d-tank-machine-gun')

-- Recipes for category zythum-defense
zythum_sort('defense',       01, 01, '5d-metal-wall')
zythum_sort('defense',       01, 02, '5d-gate')

zythum_sort('defense',       02, 01, '5d-laser-turret-small')
zythum_sort('defense',       02, 02, '5d-laser-turret-big')
zythum_sort('defense',       02, 03, '5d-gun-turret-small')
zythum_sort('defense',       02, 04, '5d-gun-turret-big')

zythum_sort('defense',       02, 05, '5d-artillery')
zythum_sort('defense',       06, 02, 'artillery-shell')
