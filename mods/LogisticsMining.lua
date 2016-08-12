-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/LogisticsMining.lua
-- name: Logistics Mining
-- link: https://mods.factorio.com/mods/Afforess/LogisticsMining
-- author: cybrox
-- refver: 1.0.4

zythum_sort_mod('LogisticsMining')


-- Recipes for category zythum-collecting
zythum_sort('collecting',    02, 01, 'robo-mining-drill')

-- Recipes for category zythum-logistics
zythum_sort('logistics',     03, 01, 'mining-logistics')
zythum_sort('logistics',     04, 01, 'robo-miner-logistic-chest-active-provider')

-- Recipes for category zythum-production
zythum_sort('production',    03, 01, 'charging-assembling-machine')

-- Recipes for category zythum-intermediate
zythum_sort('intermediate',  05, 01, 'charged-battery')
zythum_sort('intermediate',  05, 02, 'supercharged-battery')
