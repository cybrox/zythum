-- zythum sorter
-- tidy up your factorio ui
--
-- written and copyrighted 2016+
-- by sven marc 'cybrox' gehring
--
-- file: core/debug.lua
-- desc: Helper function for debugging


--- Log a given string and optional values.
-- @param message The message to output in the log
-- @param ... Optional values that will be concatenated to the message
function zythum_log (message, ...)
  print('zythum> ' .. string.format(message, ...))
end


--- Log a serpent print block of an object.
-- This method may be used for debugging only
-- @param object The object that should be printed
function zythum_debug (object)
  print(serpent.block(object))
end
