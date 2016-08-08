-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: core/debug.lua
-- desc: Helper function for debugging

function zythum_log (message, ...)
  print('zythum> ' .. string.format(message, ...))
end

function zythum_debug (object)
  print(serpent.block(object))
end
