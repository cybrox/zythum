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
require('mods.20x20ArmorMK2')
require('mods.5dim_automatization')
require('mods.5dim_battlefield')
require('mods.5dim_decoration')
require('mods.5dim_energy')
require('mods.5dim_logistic')
require('mods.5dim_mining')
require('mods.5dim_module')
require('mods.5dim_resources')
require('mods.5dim_vehicle')
require('mods.additionaloilrefineries')
require('mods.AddAssemblerBatteries')
require('mods.Advanced-Drills')
require('mods.Advanced-Electric')
require('mods.Advanced-Logistics')
require('mods.AfraidOfTheDark')
require('mods.Agent+Orange')
require('mods.Aircraft')
require('mods.base')
require('mods.BigWoodenPowerPole')
