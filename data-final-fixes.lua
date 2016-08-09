-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: data-final-fixes.lua
-- desc: Past-load after all other mods, initialize sorting

require('config')

-- Load mod internal data and libraries from the core
require('core.debug')
require('core.sorter')

-- Load mod prototypes in order to append them to the game
require('prototypes.item-groups')

-- Load separate sorting files for mods in order to rearrange them
require('mods.base')
require('mods.big-wooden-power-pole')
