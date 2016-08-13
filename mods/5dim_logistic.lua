-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/5dim_logistic.lua
-- name: 5dim Logistic
-- link: https://mods.factorio.com/mods/McGuten/5dim%5Flogistic
-- author: cybrox
-- refver: 0.13.1

zythum_sort_mod('5dim_logistic')

-- Recipes for category zythum-collecting
zythum_sort('collecting',    02, 01, '5d-repair-pack-2')  

-- Recipes for category zythum-logistics
zythum_sort('logistics',     02, 01, '5d-roboport-2')
zythum_sort('logistics',     03, 01, '5d-construction-robot-2')
zythum_sort('logistics',     03, 02, '5d-logistic-robot-2')
zythum_sort('logistics',     04, 01, '5d-passive')
zythum_sort('logistics',     04, 02, '5d-requester')
zythum_sort('logistics',     04, 03, '5d-active')
zythum_sort('logistics',     04, 04, '5d-storage')
