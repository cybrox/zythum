-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/Oxygen.lua
-- name: Oxygen
-- link: https://mods.factorio.com/mods/Natha/Oxygen
-- author: cybrox
-- refver: 1.4.1

zythum_sort_mod('Oxygen')


-- Recipes for category zythum-chemistry
zythum_sort('chemistry',     02, 01, 'oxygen')

-- Recipes for category zythum-liquids
zythum_sort('liquids',       01, 01, 'big-oxygen-bottle')
zythum_sort('liquids',       01, 02, 'empty-oxygen-bottle')
zythum_sort('liquids',       01, 03, 'big-empty-oxygen-bottle')

zythum_sort('liquids',       07, 01, 'oxygen-from-water')
zythum_sort('liquids',       07, 02, 'oxygen-from-atmosphere')
zythum_sort('liquids',       07, 03, 'oxygen-bottle')

-- Recipes for category zythum-armory
zythum_sort('armory',        06, 01, 'gas-mask')

-- Recipes for category zythum-defense
zythum_sort('defense',       02, 01, 'oxygen-dispenser')
