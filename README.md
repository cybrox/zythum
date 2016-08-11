# zythum
**zythum** is a Factorio mod wrapper that will sort all your base game and modded items into more reasonable categories. The aim of this mod is to clean up the Factorio UI, especially the crafting menu, no matter what kind of mod you use for your current game.

This mod was inspired by [ZGroupChange](https://mods.factorio.com/mods/Progsy/ZGroupChange), however, while ZGroupChange provides renaming for some famous mods and even adds some new items and technology, it highly depends on all of the supported core mods to be loaded. It will otherwise fail, hide items, or mess up your UI.

**zythum** will not add any research or items and will also not be dependent on any specific mods. It uses a completely different approach than ZGroupChange, meaning every single item will be assigned a group and not just batches of items from other mods. This way, the mod will not cause any weird behaviour with custom modpacks.

[LICENSE](https://github.com/cybrox/zythum/blob/master/LICENSE.md) |
[CONTRIBUTING](https://github.com/cybrox/zythum/blob/master/CONTRIBUTING.md) |
[CHANGELOG](https://github.com/cybrox/zythum/blob/master/CHANGELOG.md)

## Supported mods
- **base** `>= 13.0 `
- [ 20x20 Armor MK2](https://mods.factorio.com/mods/Neonit/20x20ArmorMK2) `>= 0.0.3`
- [ 5dim Automatization](https://mods.factorio.com/mods/McGuten/5dim%5Fautomatization) `>= 0.13.1`
- [ 5dim Battlefield](https://mods.factorio.com/mods/McGuten/5dim%5Fbattlefield) `>= 0.13.1`
- [ 5dim Decoration](mods.factorio.com/mods/https://mods.factorio.com/mods/McGuten/5dim%5Fdecoration) `>= 0.13.1`
- [ 5dim Energy](https://mods.factorio.com/mods/McGuten/5dim%5Fenergy) `>= 0.13.1`
- [ 5dim Logistic](https://mods.factorio.com/mods/McGuten/5dim%5Flogistic) `>= 0.13.1`
- [ 5dim Mining](https://mods.factorio.com/mods/McGuten/5dim%5Fmining) `>= 0.13.1`
- [ 5dim Module](https://mods.factorio.com/mods/McGuten/5dim%5Fmodule) `>= 0.13.1`
- [ 5dim Resources](mods.factorio.com/mods/https://mods.factorio.com/mods/McGuten/5dim%5Fresources) `>= 0.13.1`
- [ 5dim Vehicles](https://mods.factorio.com/mods/McGuten/5dim%5Fvehicle) `>= 0.13.1`
- [ Add Assembler Batteries](https://mods.factorio.com/mods/DRY411S/AddAssemblerBatteries) `>= 0.13.1`
- [ Advanced Drills](https://mods.factorio.com/mods/Neomore/Advanced%2DDrills) `>= 0.1.7`
- [ Advanced Electric](https://mods.factorio.com/mods/Neomore/Advanced%2DElectric) `>= 0.1.2`
- [ Advanced Logistic](https://mods.factorio.com/mods/Neomore/Advanced%2DLogistics) `>= 0.1.1`
- [ Afraid of the Dark](https://mods.factorio.com/mods/binbinhfr/AfraidOfTheDark) `>= 1.0.13`
- [ Agent Orange](https://mods.factorio.com/mods/Ranakastrasz/Agent+Orange) `>= 0.0.6`
- [ Aircraft](https://mods.factorio.com/mods/zingo2/Aircraft) `>= 1.0.7`
- [ Algaculture](https://mods.factorio.com/mods/Fortanono/Algaculture) `>= 0.1.3`
- [ Alien Oil](https://mods.factorio.com/mods/Rseding91/Alien%20Oil) `>= 1.0.9`
- [ Alien Artifacts](https://mods.factorio.com/mods/flonussi/AlienArtifacts) `>= 0.1.1`
- [ Alien Eggs](https://mods.factorio.com/mods/binbinhfr/AlienEggs) `>= 1.0.5`
- [ Alien Wall](https://mods.factorio.com/mods/vedrit/AlienWall) `>= 0.4.3`
- [ All Fluids](https://mods.factorio.com/mods/Delus/AllFluids) `>= 1.0.2`
- [ Alternate Alien Science](https://mods.factorio.com/mods/Delois/Alternate%20Alien%20Science) `>= 0.1.6`
- [ Ammo Box](https://mods.factorio.com/mods/Afforess/AmmoBox) `>= 1.0.1`
- [ Aquifer Drill](https://mods.factorio.com/mods/Align/AquiferDrill) `>= 1.2.0`
- [ Big Wooden Power Pole](mods.factorio.com/mods/Klonan/BigWoodenPowerPole) `>= 0.0.3`
- [ Additional Oil Refineries](https://mods.factorio.com/mods/IhanaMies/additionaloilrefineries) `>= 1.1.0`
- [ Air Filtering](https://mods.factorio.com/mods/Schorty/air%2Dfiltering) `>= 0.4.0`
- [ Alien Science](https://mods.factorio.com/mods/Delois/alien%2Dscience) `>= 0.1.1`

## Planned mods
- andrew mods
- angel mods

## Item groups 
The following item groups will be present in the crafting UI when the mod is loaded.

- **zythum-collecting** Items related to collecting and gathering basic resources from the game world
- **zythum-transport** Items related to moving items and fluids around in your factories
- **zythum-logistics** Items related to moving items and fluids with logistic robots
- **zythum-automation** Items related to automating the flow of items and fluids in your factory
- **zythum-production** Items related to processing and producing items in your factory
- **zythum-energy** Items related to producing and storing energy in order to keep your factory powered
- **zythum-chemistry** All kind of chemical recipes
- **zythum-intermediate** Intermediate products used for further processing
- **zythum-modules** All kind of modules
- **zythum-vehicles** All kind of vehicles and trains
- **zythum-resources** Basic resources
- **zythum-plates** Basic materials from resources such as plates or similar
- **zythum-liquids** Basic liquids and liquid handling recipes
- **zythum-alien** Alien technology recipes
- **zythum-defense** Defensive structures
- **zythum-armory** Defensive items and armor
- **zythum-decorative** Decorative items
- **zythum-other** Items that don't fit it any category

## Item subgroups 
- **zythum-collecting**
 - **01** Hand tools for mining and destruction
 - **02** Hand tools for repairing and constructing
 - **03** Coal and electric mining drills row 1
 - **04** Coal and electric mining drills row 2
 - **05** Oil and water pumps for collecting resources
 - **07** Basic storage chests
 - **08** Large storage chests and warehouses
 - **09** Fluid storage

- **zythum-transport** 
 - **01** Transport belts
 - **02** Underground transport belts
 - **03** Transport belt splitter
 - **06** Pipes
 - **07** Underground pipes
 - **08** Fluid pumps

- **zythum-logistics**
 - **01** Blueprints and blueprint handling
 - **02** Logistic robot related buildings and charging stations
 - **03** Logistic robot parts and assets
 - **04** Logistic storage chests and warehouse
 - **06** Wires and connector for logistics networks

- **zythum-automation** 
 - **01** Base level inserters, nothing fancy here
 - **02** Stack inserters
 - **03** Smart inserters
 - **04** 90° inserters

- **zythum-production** 
 - **01** Basic Furnaces / Mashers
 - **03** Basic Factories
 - **05** Basic Oil Related Factories
 - **06** Basic Chemical Related Factories
 - **08** Biological factories
 - **09** Science and research buildings

- **zythum-energy** 
 - **01** Steam power related items
 - **02** Other type of power generators
 - **04** Energy storage and accumulators
 - **06** Energy distribution items
 - **08** Energy containing items (fuel value providers)

- **zythum-chemistry**
 - **01** Basic chemical resource processing
 - **02** Basic intermediate chemical resources
 - **04** Hard chemical items
 - **06** Chemical fuel sources
 - **08** Biological chemical items

- **zythum-intermediate**
 - **01** Science pack and research related items
 - **02** Electronic circuits and their components
 - **04** Random intermediate items
 - **09** Factorio end game items

- **zythum-modules**
 - **01** Module and effect transmission related buildings
 - **02** Speed modules
 - **03** Productivity modules
 - **04** Effectivity modules
 - **05** Pollution modules

- **zythum-vehicles**
 - **01** Locomotives and cargo wagons
 - **02** Rails
 - **03** Train-flow related items
 - **05** All kind of vehicles
 - **07** All kind of vehicle ammunition

- **zythum-resources**
 - **01** Wood and synthetic wood related items
 - **02** Basic resources and minerals
 - **04** Basic but a bit more processed materials

- **zythum-plates**
 - **01** Basic first level plates
 - **02** Basic second level plates

- **zythum-liquids**
 - **01** Barrels and other liquid containers
 - **02** Filling barrels and containers
 - **04** Emptying barrels and containers
 - **06** Barelled liquids
 - **07** Liquid processing

- **zythum-alien**
 - **01** Alien artifacts
 - **03** Alien eggs and other parts
 - **05** Alien buildings
 - **07** Alien research

- **zythum-defense**
 - **01** Walls and gates
 - **02** Turrets and other active defensive structures
 - **04** Radars and other passive defensive structures

- **zythum-armory**
 - **01** Weapons
 - **03** Ammunition
 - **05** Grenades, mines, capsules and other small items
 - **06** Basic and modular armor
 - **07** Supportive armor modules
 - **08** Power based armor modules
 - **09** Offensive based armor modules

- **zythum-decorative**
 - **01** Landfill terraforming
 - **02** Waterfill terraforming
 - **03** Floors
 - **04** Lights
 - **05** Monuments

- **zythum-other**
 - **01** Food

