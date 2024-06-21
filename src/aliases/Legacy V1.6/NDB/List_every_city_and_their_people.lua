city_online = {}
local Config = Legacy.Settings.NDB.Config
local tmp_city = ''
for k,v in pairs(Legacy.NDB.db) do
  if table.contains(Legacy.NDB.awake, k) then
    tmp_city = v.city
    if tmp_city == '(none)' then
      tmp_city = "Rogue"
    end
    if not city_online[tmp_city] then
      city_online[tmp_city] = {}
    end
    table.insert(city_online[tmp_city], k)
  end
end


for k,v in pairs(city_online) do
  if Legacy.Settings.NDB.Config[k:lower()] then
    cecho("\n<"..Legacy.Settings.NDB.Config[k:lower()].color..">"..k..": ")
  else
    cecho("\n<"..Legacy.Settings.NDB.Config["(none)"].color..">"..k..": ")
  end
  for j,l in pairs(city_online[k]) do
    cecho(""..Legacy.NDB.color(l)..l.." ")
  end
end