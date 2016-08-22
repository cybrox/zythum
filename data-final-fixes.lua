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
if zythum_cfg_enabledebug == false then
  require('mods.compiled')
else
  require('mods.00+Armor')
  require('mods.00+Water+Pump')
  require('mods.20x20ArmorMK2')
  require('mods.5dim_automatization')
  require('mods.5dim_battlefield')
  require('mods.5dim_decoration')
  require('mods.5dim_energy')
  require('mods.5dim_logistic')
  require('mods.5dim_mining')
  require('mods.5dim_module')
  require('mods.5dim_ores')
  require('mods.5dim_resources')
  require('mods.5dim_transport')
  require('mods.5dim_vehicle')
  require('mods.AddAssemblerBatteries')
  require('mods.additionaloilrefineries')
  require('mods.Advanced-Drills')
  require('mods.Advanced-Electric')
  require('mods.Advanced-Logistics')
  require('mods.Advanced_Personal_Roboports')
  require('mods.AfraidOfTheDark')
  require('mods.Agent+Orange')
  require('mods.air-filtering')
  require('mods.Aircraft')
  require('mods.Algaculture')
  require('mods.Alien+Oil')
  require('mods.Alien-Industry-Missile-Chariot')
  require('mods.alien-science')
  require('mods.AlienArtifacts')
  require('mods.AlienEggs')
  require('mods.AlienWall')
  require('mods.AllFluids')
  require('mods.Alternate+Alien+Science')
  require('mods.AmmoBox')
  require('mods.andew-logistics')
  require('mods.andew-modules')
  require('mods.andrew-library')
  require('mods.andrew-power-armor')
  require('mods.AquiferDrill')
  require('mods.Artillery')
  require('mods.AssemblyZero')
  require('mods.AutomaticDeconstruction')
  require('mods.Auto_Deploy_Destroyers')
  require('mods.Avatars')
  require('mods.barrels')
  require('mods.base')
  require('mods.beltplanner')
  require('mods.beltSorter')
  require('mods.Bergius_Process')
  require('mods.BigDrill')
  require('mods.BigWoodenPowerPole')
  require('mods.Big_Brother')
  require('mods.Big_chest')
  require('mods.Bio_Industries')
  require('mods.Biter-gun')
  require('mods.BlackMarket')
  require('mods.blueprint-book-2')
  require('mods.bobassembly')
  require('mods.bobelectronics')
  require('mods.bobenemies')
  require('mods.bobgreenhouse')
  require('mods.boblogistics')
  require('mods.bobmining')
  require('mods.bobmodules')
  require('mods.bobores')
  require('mods.bobplates')
  require('mods.bobpower')
  require('mods.bobtech')
  require('mods.bobwarfare')
  require('mods.boxing')
  require('mods.BridgeRailway')
  require('mods.bulldozer')
  require('mods.burn-the-world')
  require('mods.Burner-Filter-Inserter')
  require('mods.CargoRocket')
  require('mods.Chainsaw')
  require('mods.CharcoalBurner')
  require('mods.CheaperAmmoMaybe')
  require('mods.CI-automation')
  require('mods.CircuitAlerter')
  require('mods.CircuitLogger')
  require('mods.CoalToHeavy')
  require('mods.color-coding')
  require('mods.Combat_Units')
  require('mods.compoundsplitters')
  require('mods.Compression+Chests')
  require('mods.Concrete_Lamppost')
  require('mods.CopySettingsTool')
  require('mods.Crafted Artifacts')
  require('mods.creative-mode')
  require('mods.Cursed-PI')
  require('mods.CurvedRail')
  require('mods.deforest-planner')
  require('mods.DistancePlus')
  require('mods.DrillingPumpjack')
  require('mods.Drones')
  require('mods.dynamic-train-stop')
  require('mods.EEMD')
  require('mods.Electric+Furnaces')
  require('mods.ElectricVoid')
  require('mods.electric_ghost_car')
  require('mods.Equalizer_Chests')
  require('mods.expanded_tools')
  require('mods.Explosive+Excavation')
  require('mods.Explosive+Termites')
  require('mods.ExtendoReach')
  require('mods.extinguisher')
  require('mods.FactorioExtended-Core')
  require('mods.FactorioExtended-Equipment')
  require('mods.FactorioExtended-Logistics')
  require('mods.FactorioExtended-Machines')
  require('mods.FactorioExtended-Power')
  require('mods.FactorioExtended-Transport')
  require('mods.FactorioExtended-Weaponry')
  require('mods.Factorissimo')
  require('mods.Factorissimo_Plus')
  require('mods.FARL')
  require('mods.FasterTrains')
  require('mods.Fast_Long_Inserter')
  require('mods.Fire_Mine')
  require('mods.fish-sandwich')
  require('mods.flamenades')
  require('mods.Flare')
  require('mods.Flow Control')
  require('mods.flownetwork')
  require('mods.Fluid+Void')
  require('mods.fluid-barrel')
  require('mods.FlyTox')
  require('mods.Force Fields')
  require('mods.FusionReactor')
  require('mods.FusionRobots')
  require('mods.GDIW')
  require('mods.GeneratorPriority')
  require('mods.Generic_Logistic_Chest')
  require('mods.gimprovements')
  require('mods.GMod')
  require('mods.GroundPrinter')
  require('mods.HandCrankGenerator')
  require('mods.Hydraulic_Mining_Drill')
  require('mods.IncendiaryMunitions')
  require('mods.InterfaceChest')
  require('mods.Inventory+Sensor')
  require('mods.Item+Collectors')
  require('mods.K-ItemDestroyer')
  require('mods.Landfill')
  require('mods.Large-Chests')
  require('mods.launch-control')
  require('mods.Lejv-armor')
  require('mods.LIQUADO')
  require('mods.Loader-Furnace')
  require('mods.LogisticsMining')
  require('mods.Longer_Underground_Pipes')
  require('mods.magnet')
  require('mods.MagneticFloor')
  require('mods.makkariutils')
  require('mods.Megamind')
  require('mods.militarization')
  require('mods.Military_Research_5')
  require('mods.mini-machines')
  require('mods.MiniBasicStart')
  require('mods.MiniPorts')
  require('mods.Misanthrope')
  require('mods.MK2-Mod')
  require('mods.Mk3+Armor')
  require('mods.Modular-Armor')
  require('mods.ModuleInserter')
  require('mods.moindustry')
  require('mods.momining')
  require('mods.mopower')
  require('mods.More_Floors')
  require('mods.mosurvival')
  require('mods.motrans')
  require('mods.N-Tech+Chemistry')
  require('mods.Natural_Evolution_Buildings')
  require('mods.Natural_Evolution_Enemies')
  require('mods.nekochests')
  require('mods.nixie-tubes')
  require('mods.no-hand-crafting')
  require('mods.no-more-redundancies')
  require('mods.OilPatchExhauster')
  require('mods.Omnibarrels')
  require('mods.Orbital Ion Cannon')
  require('mods.ore-eraser')
  require('mods.OverMods')
  require('mods.Oxygen')
  require('mods.peacemod')
  require('mods.PeaceModeOre')
  require('mods.PeppeBotStart')
  require('mods.PersonalTeleporter')
  require('mods.Personal_Spawns')
  require('mods.Piano_Player')
  require('mods.PipeCleaner')
  require('mods.Plasma+Shotgun+Shells')
  require('mods.pollution-detector')
  require('mods.Potato')
  require('mods.PowerAndArmor')
  require('mods.Powered_Entities')
  require('mods.RailLogicSystem')
  require('mods.RailTanker')
  require('mods.Raven')
  require('mods.Realism')
  require('mods.Red+Alerts')
  require('mods.Red_Assembling_Machine')
  require('mods.Reinforced-Walls')
  require('mods.Resource-Conversions')
  require('mods.RFM-transport')
  require('mods.RoadWorks')
  require('mods.Robo-Charge')
  require('mods.RoboCharge')
  require('mods.robotarmy')
  require('mods.Satellite+Uplink+Station')
  require('mods.SatelliteRadar')
  require('mods.ScienceCostTweaker')
  require('mods.Screenshot_Tool')
  require('mods.security-camera')
  require('mods.Sensor')
  require('mods.ShevanSolar')
  require('mods.Shinys-parkingzone')
  require('mods.Ships')
  require('mods.ShuttleTrain')
  require('mods.Signposts')
  require('mods.SmartDisplay')
  require('mods.SmartSplitters')
  require('mods.SmartTrains')
  require('mods.space-platform')
  require('mods.SpaceMod')
  require('mods.spawn-belt')
  require('mods.spawn-pump')
  require('mods.Stainless+Steel+Wagon')
  require('mods.StrangeMatter')
  require('mods.Suit-Plug')
  require('mods.SuperChest')
  require('mods.SuperTank')
  require('mods.super_coal')
  require('mods.Tank+Gun')
  require('mods.Tank+Wagon')
  require('mods.TankRoboport')
  require('mods.tankwerkz')
  require('mods.Tape+Measure')
  require('mods.Tesseract')
  require('mods.TheLongNauvis')
  require('mods.The_Lab')
  require('mods.TimeTools')
  require('mods.Torches')
  require('mods.TradingChests')
  require('mods.TrainSpeedLimit')
  require('mods.Treefarm-Lite')
  require('mods.TreeSeeds')
  require('mods.upgrade-planner')
  require('mods.Upgrade')
  require('mods.usefulSpace')
  require('mods.VersepellesAlienFarm')
  require('mods.VersepellesAquaFarm')
  require('mods.VersepellesChunkMarkers')
  require('mods.VersepellesDeepQuarry')
  require('mods.VersepellesHardStorage')
  require('mods.VersepellesOreEnrichment')
  require('mods.VersepellesOutposts')
  require('mods.VictoryPoles')
  require('mods.VoidChestInstant')
  require('mods.Warehousing')
  require('mods.Waterfill')
  require('mods.WaterWell')
  require('mods.WideChests')
  require('mods.Winterio')
  require('mods.WoodenWalls')
  require('mods.YARM')
  require('mods.ZCS-Trash-Landfill')
  require('mods._M_Armor')
end
