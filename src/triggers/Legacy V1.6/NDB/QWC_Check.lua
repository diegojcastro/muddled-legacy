local str = matches[2].." "..matches[3]
local name_table = string.split(str, ", ")


for _,v in pairs(name_table) do
  if Legacy.NDB.db[v] == nil then
    Legacy.NDB.lookup(v)
  end
end
disableTrigger("QWC Check")