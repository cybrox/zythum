-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/mopower.lua
-- name: MoPower
-- link: https://mods.factorio.com/mods/Ludsoe/mopower
-- author: cybrox
-- refver: 0.5.2

zythum_sort_mod('mopower')


-- Recipes for category zythum-energy
zythum_sort('energy',        02, 01, 'wind-turbine')
zythum_sort('energy',        02, 02, 'octo-accumulator')
zythum_sort('energy',        02, 03, 'basic-coalgen')
zythum_sort('energy',        02, 04, 'disposal-plant')
zythum_sort('energy',        02, 05, 'nuclear-reactor')
zythum_sort('energy',        02, 06, 'octo-steam-engine')

-- Recipes for category zythum-chemistry
zythum_sort('chemistry', 09, 01, 'uranium-reaction')
zythum_sort('chemistry', 09, 02, 'uranium-refinement')
zythum_sort('chemistry', 09, 03, 'uranium-disposal')
zythum_sort('chemistry', 09, 04, 'uranium-rod')
zythum_sort('chemistry', 09, 05, 'uranium-depleted')
zythum_sort('chemistry', 09, 06, 'uranium-waste')
zythum_sort('chemistry', 09, 07, 'depleted-uranium-enrichment')

zythum_sort('chemistry', 06, 01, 'energy-devourer')
zythum_sort('chemistry', 06, 02, 'fuel-storage')
zythum_sort('chemistry', 06, 03, 'steam')

-- Recipes for category zythum-resources
zythum_sort('resources',     01, 01, 'uranium-ore')
