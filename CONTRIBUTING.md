### Contributing to the source code
Feel free to create pull request with any kind of changes you want to see implemented in this mod against this repository. Though I doubt that the source code of the mod itself will drastically change in the future (since the functionality of the mod is quite simple), any kind of improvement is welcome.

### Contributing mods
1. Copy `/mods/_template.lua` for the mod you want to add to `/mods/<modname>.lua`
2. Fill in all the mod details, syntax is `group, row, position, item`
3. Require the new mod file in `data-final-fixes.lua` below the others

### Using the generator
**zythum** contains a generator that will automatically extract all needed prototypes from a modpack, if they are defined at the right place (`/prototypes`). The generator will load all folders or zip file in a given import directory, unpack them if needed, fetch their prototypes and generate a *zythum mods file* template out of it.

To use the generator for your mods simply run the following command from the zythum project root:
```
bash scripts/import.sh path/to/folder/that/contains/mods
```

Example output for the `big-wooden-power-pole` mod
```
OK: Found mod BigWoodenPowerPole_0.0.3.zip
OK: Unzipped and moved mod BigWoodenPowerPole_0.0.3.zip
OK: Found imported mod BigWoodenPowerPole_0.0.3
OK: Loading prototypes for mod BigWoodenPowerPole
OK: Loaded prototype from file 0 at 1 (electric-pole:big-wooden-pole)
OK: Loaded prototype from file 1 at 1 (item:big-wooden-pole)
OK: Loaded prototype from file 2 at 1 (recipe:big-wooden-pole)
```

