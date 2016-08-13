-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: data-final-fixes.lua
-- desc: Give player a filter inserter when debugging for testing

require('config')

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index];

  player.force.research_all_technologies()
  player.insert {
    name="filter-inserter",
    count=1
  } 
end)
