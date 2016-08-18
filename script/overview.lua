--
-- Overview script for zythum
-- Fetches an overview of all sorted mods for balancing
--

item_list={}
item_reps=''

function zythum_sort_mod(mod) end
function zythum_sort(cat, row, pos, item)
  if item_list[cat] == nil then
    item_list[cat] = {}
  else
    if item_list[cat][row] == nil then
      item_list[cat][row] = {}
    else
      table.insert(item_list[cat][row], item)
    end
  end
end

local f = io.popen("ls ./mods | sed 's/.lua//g'")
for mod in f:lines() do
  require('mods.'..mod)
end

for name, rows in pairs(item_list) do
  item_reps = item_reps .. '\n\n# ' ..name .. '\n'
  
  for row, items in pairs(rows) do
    item_reps = item_reps .. '\n### ' ..row .. '\n'
    for _, item in pairs(items) do
      item_reps = item_reps .. '- ' .. item .. '\n'
    end
  end
end

print('OK: Writing overview report file in project root')
f_output = io.open('overview.md', 'w')
f_output:write(item_reps)
f_output:close()
