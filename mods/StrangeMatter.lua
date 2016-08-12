-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/StrangeMatter.lua
-- name: Strange Matter
-- link: https://mods.factorio.com/mods/5cript/StrangeMatter
-- author: cybrox
-- refver: 0.1.2

zythum_sort_mod('StrangeMatter')


-- Recipes for category zythum-production
zythum_sort('production',    06, 01, 'matter-fabricator')

-- Recipes for category zythum-chemistry
zythum_sort('chemistry',     09, 01, 'strange-matter-fabrication')
zythum_sort('chemistry',     09, 02, 'wood-synthesis')
zythum_sort('chemistry',     09, 03, 'stone-synthesis')
zythum_sort('chemistry',     09, 04, 'coal-synthesis')
zythum_sort('chemistry',     09, 05, 'copper-synthesis')
zythum_sort('chemistry',     09, 06, 'iron-synthesis')
zythum_sort('chemistry',     09, 07, 'artifact-synthesis')

-- Recipes for category zythum-resources
zythum_sort('resources',     01, 01, 'strange-matter')
