-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/FusionReactor.lua
-- name: Fusion Reactor
-- link: https://mods.factorio.com/mods/charga600/FusionReactor
-- author: cybrox
-- refver: 0.1.4

zythum_sort_mod('FusionReactor')


-- Recipes for category zythum-energy
zythum_sort('energy',        03, 01, 'fusion-reactor')

-- Recipes for category zythum-intermediate
zythum_sort('intermediate',  04, 01, 'deuterium-capsule')
zythum_sort('intermediate',  04, 02, 'deuterium-fluid')

-- Recipes for category zythum-plates
zythum_sort('plates',        03, 01, 'reactor-plate')
