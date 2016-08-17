-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/CI-automation.lua
-- name: Cartmen Automation Extension
-- link: https://mods.factorio.com/mods/Cartmen180/CI-automation
-- author: cybrox
-- refver: 0.1.0

zythum_sort_mod('CI-automation')


-- Recipes for category zythum-transport
zythum_sort('transport',     01, 01, 'transport-belt-4')
zythum_sort('transport',     02, 01, 'belt-to-ground-4')
zythum_sort('transport',     03, 01, 'splitter-4')

-- Recipes for category zythum-automation
zythum_sort('automation',    01, 01, 'faster-inserter')

-- Recipes for category zythum-production
zythum_sort('production',    01, 01, 'electric-furnace-2')
zythum_sort('production',    01, 02, 'electric-furnace-3')
zythum_sort('production',    03, 01, 'assembling-machine-4')
zythum_sort('production',    03, 02, 'assembling-machine-5')
zythum_sort('production',    03, 03, 'assembling-machine-6')
zythum_sort('production',    03, 04, 'assembling-machine-7')
zythum_sort('production',    03, 05, 'assembling-machine-8')
zythum_sort('production',    03, 06, 'assembling-machine-9')
zythum_sort('production',    03, 07, 'assembling-machine-10')

-- Recipes for category zythum-intermediate
zythum_sort('intermediate',  04, 01, 'steel-gear-wheel')
zythum_sort('intermediate',  04, 02, 'lubed-gear-wheel')
