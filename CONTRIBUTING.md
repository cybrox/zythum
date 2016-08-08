### Contributing to the source code
Feel free to create pull request with any kind of changes you want to see implemented in this mod against this repository. Though I doubt that the source code of the mod itself will drastically change in the future (since the functionality of the mod is quite simple), any kind of improvement is welcome.

### Contributing mods
1. Copy `/mods/_template.lua` for the mod you want to add to `/mods/<modname>.lua`
2. Fill in all the mod details, syntax is `group, row, position, item`
3. Require the new mod file in `data-final-fixes.lua` below the others
