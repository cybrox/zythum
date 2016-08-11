### Contributing to the source code
Feel free to create pull request with any kind of changes you want to see implemented in this mod against this repository. Though I doubt that the source code of the mod itself will drastically change in the future (since the functionality of the mod is quite simple), any kind of improvement is welcome.

### Contributing mods 
**If** you add a new mod, **do not** edit `README.md` or `data-final-fixes.lua`, they can be generated!
**If** a mod is sorted via zythum, items of the same mod will **always** be next to eachother in the UI.

#####Manually adding mods
1. Copy `/mods/_template.lua` for the mod you want to add to `/mods/<modname>.lua`
2. Fill out the template header accordingly, this is important, since a part of the mod is generated from it!
2. Make sure you change the mod sorting name on top of the file to your mod's name `zythum_sort_mod('<modname>')`
3. Fill in all the mod details, syntax is `zythum_sort(<group>, <row>, <position>, <item>)`
3. Require the new mod file in `data-final-fixes.lua` preferably in alphabetical order with all the other mods

#####Adding mods with the generator
1. Run `bash script/import-single.sh <path-to-mod> <is-new> <base-mod>` (see below)
2. Adjust the details in the created file as needed
3. Don't update `README.md` or `data-final-fixes.lua`, the import script regenerates them automatically.

### Using the scripts
**IMPORTANT:** All scripts are designed to be run from the project root. Please note that I work on script compatibility, to make sure, they run on your system too, so far, it's quite experimental.

#####build.sh
Running this will pack all important data into a temporary folder and then zip them into a mod archive. **Always** make sure to turn `debug` off in the config before you pack (I need to automate this...)
This will automatically take the version from `info.json`

#####generate-imports.sh
This script will automatically regenerate `data-final-fixes` with all mod includes based on the mod directory `/mods`. This is automatically run by `import-single.sh`

#####generate-readme.sh
This script will automatically regenerate `README.md` with data from all mod file headers. This is automatically run by `import-single.sh`

#####import-multiple.sh
Usage: `bash script/import-multiple.sh <path> <base>`    
- `path` The path to the folder with zip's to import
- `base` If set, the generator will load this package into the mods too, in case your mods require a base library.
Give this script a path and it will run `import-single.sh` for every file in that directory. Useful if you want to generate data for a bunch of mods.

#####import-single.sh
Usage: `bash script/import-singe.sh <path> <new> <base>`
- `path` The path to the mod zip you want to generate info for
- `new` If set to "new", the output file will directly be in `/mods` instead of `/import`
- `base` If set, the generator will load this package into the mods too, in case your mods require a base library.

**config:** This script contains two variables that define the path to your factorio executable and your factorio mod directory, you might need to update those depending on your machine.

### Keeping the mod up to date
The script `script/update.lua` will query the `mods.factorio.com` API and match all information against the mods in the mod directory. If a new mod (that is not on `script/blacklist.json`) is found or a new version of an existing mod is found, the script will output that information into `update.txt`

The script requires the following luarocks dependencies:
- [socket](https://luarocks.org/modules/luarocks/luasocket)
- [lunajson](https://luarocks.org/modules/grafi/lunajson)