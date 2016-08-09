-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: data-final-fixes.lua
-- desc: Give player a filter inserter when debugging for testing

require('config')

if zythum_cfg_enabledebug then
  script.on_event(defines.events.on_player_created, function(event)
    game.players[event.player_index].insert {
      name="filter-inserter",
      count=1
    } 
  end)
end
