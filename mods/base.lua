-- zythum sorter
-- tidy up your factorio ui
--
-- file: mods/base.lua
-- link: factorio.com
-- author: cybrox
-- refver: 0.13

-- Tricking a bit here to enforce base as first sorting order
zythum_sort_mod('000000-base')


-- Recipes for category zythum-collecting
zythum_sort('collecting',    01, 01, 'iron-axe')
zythum_sort('collecting',    01, 02, 'steel-axe')
zythum_sort('collecting',    02, 01, 'repair-pack')   
zythum_sort('collecting',    03, 01, 'burner-mining-drill')  
zythum_sort('collecting',    03, 02, 'electric-mining-drill')
zythum_sort('collecting',    05, 01, 'pumpjack')    
zythum_sort('collecting',    05, 01, 'offshore-pump')   
zythum_sort('collecting',    07, 01, 'wooden-chest')
zythum_sort('collecting',    07, 02, 'iron-chest')     
zythum_sort('collecting',    07, 03, 'steel-chest')
zythum_sort('collecting',    09, 01, 'storage-tank')  

-- Recipes for category zythum-transport
zythum_sort('transport',     01, 01, 'transport-belt')
zythum_sort('transport',     01, 02, 'fast-transport-belt')
zythum_sort('transport',     01, 03, 'express-transport-belt')
zythum_sort('transport',     02, 01, 'underground-belt')
zythum_sort('transport',     02, 02, 'fast-underground-belt')
zythum_sort('transport',     02, 03, 'express-underground-belt')
zythum_sort('transport',     03, 01, 'splitter')
zythum_sort('transport',     03, 02, 'fast-splitter')
zythum_sort('transport',     03, 03, 'express-splitter')
zythum_sort('transport',     06, 01, 'pipe')
zythum_sort('transport',     07, 01, 'pipe-to-ground')
zythum_sort('transport',     08, 01, 'small-pump')    

-- Recipes for category zythum-logistics
zythum_sort('logistics',      01, 01, 'blueprint-book')
zythum_sort('logistics',      01, 02, 'blueprint')
zythum_sort('logistics',      01, 03, 'deconstruction-planner')
zythum_sort('logistics',      02, 01, 'roboport')
zythum_sort('logistics',      03, 01, 'logistic-robot')
zythum_sort('logistics',      03, 02, 'construction-robot')
zythum_sort('logistics',      04, 01, 'logistic-chest-storage')
zythum_sort('logistics',      04, 02, 'logistic-chest-requester')
zythum_sort('logistics',      04, 03, 'logistic-chest-passive-provider')
zythum_sort('logistics',      04, 04, 'logistic-chest-active-provider')
zythum_sort('logistics',      06, 02, 'red-wire')
zythum_sort('logistics',      06, 03, 'green-wire')
zythum_sort('logistics',      06, 04, 'arithmetic-combinator')
zythum_sort('logistics',      06, 05, 'decider-combinator')
zythum_sort('logistics',      06, 06, 'constant-combinator')
zythum_sort('logistics',      06, 07, 'power-switch')

-- Recipes for category zythum-automation
zythum_sort('automation',    01, 01, 'burner-inserter')
zythum_sort('automation',    01, 02, 'inserter')
zythum_sort('automation',    01, 03, 'fast-inserter')
zythum_sort('automation',    01, 04, 'filter-inserter')
zythum_sort('automation',    01, 05, 'long-handed-inserter')
zythum_sort('automation',    02, 01, 'stack-inserter')
zythum_sort('automation',    02, 02, 'stack-filter-inserter')

-- Recipes for category zythum-production
zythum_sort('production',    01, 01, 'stone-furnace')
zythum_sort('production',    01, 02, 'steel-furnace')
zythum_sort('production',    01, 03, 'electric-furnace')
zythum_sort('production',    03, 01, 'assembling-machine-1')
zythum_sort('production',    03, 02, 'assembling-machine-2')
zythum_sort('production',    03, 03, 'assembling-machine-3')
zythum_sort('production',    05, 01, 'oil-refinery')
zythum_sort('production',    06, 01, 'chemical-plant')
zythum_sort('production',    09, 01, 'lab')

-- Recipes for category zythum-energy
zythum_sort('energy',        01, 01, 'boiler')
zythum_sort('energy',        01, 02, 'steam-engine')
zythum_sort('energy',        02, 01, 'solar-panel')
zythum_sort('energy',        04, 01, 'accumulator')
zythum_sort('energy',        06, 01, 'small-electric-pole')
zythum_sort('energy',        06, 02, 'medium-electric-pole')
zythum_sort('energy',        06, 03, 'big-electric-pole')
zythum_sort('energy',        06, 04, 'substation')
zythum_sort('energy',        08, 01, 'solid-fuel')

-- Recipes for category zythum-chemistry
zythum_sort('chemistry',     01, 01, 'heavy-oil-cracking')
zythum_sort('chemistry',     01, 02, 'light-oil-cracking')
zythum_sort('chemistry',     01, 03, 'lubricant')
zythum_sort('chemistry',     02, 01, 'sulfur')
zythum_sort('chemistry',     02, 02, 'sulfuric-acid')
zythum_sort('chemistry',     04, 01, 'plastic-bar')
zythum_sort('chemistry',     06, 01, 'solid-fuel-from-light-oil')
zythum_sort('chemistry',     06, 02, 'solid-fuel-from-heavy-oil')
zythum_sort('chemistry',     06, 03, 'solid-fuel-from-petroleum-gas')

-- Recipes for category zythum-intermediate
zythum_sort('intermediate',  01, 01, 'science-pack-1')
zythum_sort('intermediate',  01, 02, 'science-pack-2')
zythum_sort('intermediate',  01, 03, 'science-pack-3')
zythum_sort('intermediate',  01, 04, 'alien-science-pack')
zythum_sort('intermediate',  02, 01, 'electronic-circuit')
zythum_sort('intermediate',  02, 02, 'advanced-circuit')
zythum_sort('intermediate',  02, 03, 'processing-unit')
zythum_sort('intermediate',  03, 01, 'copper-cable')
zythum_sort('intermediate',  04, 01, 'iron-gear-wheel')
zythum_sort('intermediate',  04, 02, 'iron-stick')
zythum_sort('intermediate',  05, 01, 'explosives')
zythum_sort('intermediate',  05, 02, 'battery')
zythum_sort('intermediate',  05, 03, 'engine-unit')
zythum_sort('intermediate',  05, 04, 'electric-engine-unit')
zythum_sort('intermediate',  05, 05, 'flying-robot-frame')
zythum_sort('intermediate',  09, 01, 'rocket-silo')
zythum_sort('intermediate',  09, 02, 'low-density-structure')
zythum_sort('intermediate',  09, 03, 'rocket-fuel')
zythum_sort('intermediate',  09, 04, 'rocket-part')
zythum_sort('intermediate',  09, 05, 'rocket-control-unit')
zythum_sort('intermediate',  09, 06, 'satellite')

-- Recipes for category zythum-modules
zythum_sort('modules',       01, 01, 'beacon')
zythum_sort('modules',       02, 01, 'speed-module')
zythum_sort('modules',       02, 02, 'speed-module-2')
zythum_sort('modules',       02, 03, 'speed-module-3')
zythum_sort('modules',       03, 01, 'productivity-module')
zythum_sort('modules',       03, 02, 'productivity-module-2')
zythum_sort('modules',       03, 03, 'productivity-module-3')
zythum_sort('modules',       04, 01, 'effectivity-module')
zythum_sort('modules',       04, 02, 'effectivity-module-2')
zythum_sort('modules',       04, 03, 'effectivity-module-3')

-- Recipes for category zythum-vehicles
zythum_sort('vehicles',      01, 01, 'diesel-locomotive')
zythum_sort('vehicles',      01, 02, 'cargo-wagon')
zythum_sort('vehicles',      02, 01, 'rail')
--zythum_sort('vehicles',      02, 02, 'straight-rail')
--zythum_sort('vehicles',      02, 03, 'curved-rail')
zythum_sort('vehicles',      03, 01, 'train-stop')
zythum_sort('vehicles',      03, 02, 'rail-signal')
zythum_sort('vehicles',      03, 03, 'rail-chain-signal')
zythum_sort('vehicles',      05, 01, 'car')
zythum_sort('vehicles',      05, 02, 'tank')
zythum_sort('vehicles',      05, 03, 'tank-machine-gun')
zythum_sort('vehicles',      05, 04, 'vehicle-machine-gun')
zythum_sort('vehicles',      07, 01, 'cannon-shell')
zythum_sort('vehicles',      07, 02, 'explosive-cannon-shell')

-- Recipes for category zythum-resources
zythum_sort('resources',     01, 01, 'raw-wood')
zythum_sort('resources',     01, 02, 'wood')
zythum_sort('resources',     02, 01, 'stone')
zythum_sort('resources',     02, 02, 'iron-ore')
zythum_sort('resources',     02, 03, 'copper-ore')
zythum_sort('resources',     03, 01, 'coal')
zythum_sort('resources',     04, 01, 'stone-brick')

-- Recipes for category zythum-plates
zythum_sort('plates',        01, 01, 'iron-plate')
zythum_sort('plates',        01, 02, 'copper-plate')
zythum_sort('plates',        02, 01, 'steel-plate')

-- Recipes for category zythum-liquids
zythum_sort('liquids',       01, 01, 'empty-barrel')
zythum_sort('liquids',       02, 01, 'fill-crude-oil-barrel')
zythum_sort('liquids',       04, 01, 'empty-crude-oil-barrel')
zythum_sort('liquids',       06, 01, 'crude-oil-barrel')
zythum_sort('liquids',       07, 01, 'basic-oil-processing')
zythum_sort('liquids',       07, 02, 'advanced-oil-processing')

-- Recipes for category zythum-alien
zythum_sort('alien',         01, 01, 'alien-artifact')

-- Recipes for category zythum-defense
zythum_sort('defense',       01, 01, 'stone-wall')
zythum_sort('defense',       01, 02, 'gate')
zythum_sort('defense',       02, 01, 'gun-turret')
zythum_sort('defense',       02, 02, 'laser-turret')
zythum_sort('defense',       02, 03, 'flamethrower-turret')
zythum_sort('defense',       04, 01, 'radar')

-- Recipes for category zythum-armory
zythum_sort('armory',        01, 01, 'pistol')
zythum_sort('armory',        01, 02, 'submachine-gun')
zythum_sort('armory',        01, 03, 'shotgun')
zythum_sort('armory',        01, 04, 'combat-shotgun')
zythum_sort('armory',        01, 05, 'flame-thrower')
zythum_sort('armory',        01, 06, 'rocket-launcher')
zythum_sort('armory',        03, 01, 'firearm-magazine')
zythum_sort('armory',        03, 02, 'piercing-rounds-magazine')
zythum_sort('armory',        03, 03, 'shotgun-shell')
zythum_sort('armory',        03, 04, 'piercing-shotgun-shell')
zythum_sort('armory',        03, 05, 'flame-thrower-ammo')
zythum_sort('armory',        03, 06, 'rocket')
zythum_sort('armory',        03, 07, 'explosive-rocket')
zythum_sort('armory',        05, 01, 'grenade')
zythum_sort('armory',        05, 02, 'cluster-grenade')
zythum_sort('armory',        05, 03, 'land-mine')
zythum_sort('armory',        05, 04, 'slowdown-capsule')
zythum_sort('armory',        05, 05, 'poison-capsule')
zythum_sort('armory',        05, 06, 'defender-capsule')
zythum_sort('armory',        05, 07, 'distractor-capsule')
zythum_sort('armory',        05, 08, 'destroyer-capsule')
zythum_sort('armory',        06, 01, 'discharge-defense-remote')
zythum_sort('armory',        06, 02, 'light-armor')
zythum_sort('armory',        06, 03, 'heavy-armor')
zythum_sort('armory',        06, 04, 'modular-armor')
zythum_sort('armory',        06, 05, 'power-armor')
zythum_sort('armory',        06, 06, 'power-armor-mk2')
zythum_sort('armory',        07, 01, 'exoskeleton-equipment')
zythum_sort('armory',        07, 02, 'night-vision-equipment')
zythum_sort('armory',        07, 03, 'personal-roboport-equipment')
zythum_sort('armory',        08, 01, 'solar-panel-equipment')
zythum_sort('armory',        08, 02, 'fusion-reactor-equipment')
zythum_sort('armory',        08, 03, 'battery-equipment')
zythum_sort('armory',        08, 04, 'battery-mk2-equipment')
zythum_sort('armory',        09, 01, 'personal-laser-defense-equipment')
zythum_sort('armory',        09, 02, 'discharge-defense-equipment')
zythum_sort('armory',        09, 03, 'energy-shield-equipment')
zythum_sort('armory',        09, 04, 'energy-shield-mk2-equipment')

-- Recipes for category zythum-decorative
zythum_sort('decorative',    01, 00, 'landfill')
zythum_sort('decorative',    03, 00, 'concrete')
zythum_sort('decorative',    03, 00, 'hazard-concrete')
zythum_sort('decorative',    04, 00, 'small-lamp')

-- Recipes for category zythum-other
zythum_sort('other',         01, 02, 'raw-fish')


-- Recipes that have not been assigned a category
-- 'fish'
