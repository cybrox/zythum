-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/Warehousing.lua
-- name: Warehousing Mod
-- link: https://mods.factorio.com/mods/Anoyomouse/Warehousing
-- author: cybrox
-- refver: 0.0.10

zythum_sort_mod('Warehousing')


-- Recipes for category zythum-collecting
zythum_sort('collecting',    08, 01, 'warehouse-basic')
zythum_sort('collecting',    08, 02, 'storehouse-basic')

-- Recipes for category zythum-logistics
zythum_sort('logistics',     05, 01, 'warehouse-passive-provider')
zythum_sort('logistics',     05, 02, 'warehouse-storage')
zythum_sort('logistics',     05, 03, 'warehouse-active-provider')
zythum_sort('logistics',     05, 04, 'warehouse-requester')
zythum_sort('logistics',     05, 05, 'storehouse-passive-provider')
zythum_sort('logistics',     05, 06, 'storehouse-storage')
zythum_sort('logistics',     05, 07, 'storehouse-active-provider')
zythum_sort('logistics',     05, 08, 'storehouse-requester')
