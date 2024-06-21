--Adds/Removes people whom you will not reject lust from
--Tremove is just a shortened version of table.remove 
Legacy.Curing.Lust = Legacy.Curing.Lust or {}
Legacy.Curing.Lust.whiteList = Legacy.Curing.Lust.whiteList or {}

if matches[2] == nil then
  if table.size(Legacy.Curing.Lust.whiteList) == 0 then
    Legacy.echo("You have no names or cities in your Lust Whitelist.")
  else
    cecho("\n<white>Lust Whitelist:")
    for k,v in pairs(Legacy.Curing.Lust.whiteList) do
      if table.contains(Legacy.Settings.NDB.cityList, v) then
        local color = Legacy.Settings.NDB.Config[v:lower()].color
        cecho("\n<DimGrey>-- <"..color..">The City of "..v)
      else
        local color = Legacy.Settings.NDB.Config[Legacy.NDB.db[v].city:lower()].color
        cecho("\n<DimGrey>-- <"..color..">"..v)
      end
    end
  end
elseif matches[3] == nil and matches[2] == "clear" then
  Legacy.Curing.Lust.whiteList = {}
  Legacy.echo("<red><b>You have cleared your Lust Whitelist.")
elseif matches[3] ~= nil then
local person = matches[3]:title()

  if Legacy.NDB.db[person] then
    local color = Legacy.Settings.NDB.Config[Legacy.NDB.db[person].city:lower()].color
    Legacy.NDB.lookup(person)
    if matches[2] == "add" then
      Legacy.echo("<green><b>Added "..("<"..color..">" or "<white>")..person:title().." <DimGrey>(<gold>"..Legacy.NDB.db[person].city.."<DimGrey>) <green>to your Lust Whitelist.")
      table.insert(Legacy.Curing.Lust.whiteList, person)
    elseif matches[2] == "remove" then
      Legacy.echo("<red><b>Removed "..("<"..color..">" or "<white>")..person:title().." <DimGrey>(<gold>"..Legacy.NDB.db[person].city.."<DimGrey>) <red>from your Lust Whitelist.")
      table.bremove(Legacy.Curing.Lust.whiteList, person)
    end
elseif table.contains(Legacy.Settings.NDB.cityList, person) then
    local color = Legacy.Settings.NDB.Config[person:lower()].color
    if matches[2] == "add" then
      Legacy.echo("<green><b>Added "..("<"..color..">" or "<white>").."the City of "..person:title().." <green>to your Lust Whitelist.")
      table.insert(Legacy.Curing.Lust.whiteList, person)
    elseif matches[2] == "remove" then
      Legacy.echo("<red><b>Removed "..("<"..color..">" or "<white>").."the City of "..person:title().." <red>from your Lust Whitelist.")
      table.bremove(Legacy.Curing.Lust.whiteList, person)
    end
  end
 end