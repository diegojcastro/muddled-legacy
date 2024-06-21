function Keepup(arg)
if Legacy then

local defs = {"kola", "airpocket", "deafness", "blindness", "fangbarrier", "levitating", "temperance", "insulation", "density", "speed", "rebounding", 
              "mindseye", "cloak", "mosstattoo", "starburst", "oxtattoo", "belltattoo", "megalithtattoo", "boartattoo", "moontattoo",
              "telesense", "treewatch", "vigilance", "alertness", "groundwatch", "thirdeye", "skywatch", "softfocusing", "nightsight", 
              "hypersight", "deathsight", "lifevision", "electricresist", "fireresist", "coldresist", "magicresist", "pacing", "shroud",
              "shipwarning", "heldbreath", "selfishness", "poisonresist", "insomnia", "metawake"}

local Class = {
	  Alchemist = {"astronomy", "extispicy", "mercury", "sulphur", "tin" },
    Apostate = {"shroud"},
    Bard = {"acrobatics", "arrowcatching", "balancing", "drunkensailor", "gripping", "heartsfury", "aria", "lay", "songbird", "tune",},
    Blademaster = {"waterwalking", "gripping", "consciousness", "projectiles", "standingfirm" , "toughness", "weathering", "mindnet", "shintrance", "shinbinding", "shinclarity"},
    Depthswalker = {"bodyaugment", "durability", "percision", "blur", "reflections", "disperse", "shadowveil",},
    Druid = {"affinity", "elusiveness", "evasion", "reflexes", "resistance", "stealth", "vitality", "flailingstaff" },
    Infernal = {"gripping", "weathering", "resistance", "deathaura"},
    Jester = {"acrobatics", "balancing", "gripping", "arrowcatching", "slippery"},
    Magi = {"chargeshield", "diamondskin", "stoneskin", "reflections", "stonefist" },
    Monk = {"bodyblock", "evadeblock", "pinchblock", "projectiles", "regeneration", "resistance", "splitmind", "standingfirm", "toughness", "vitality", "weathering", "mindnet", "conciousness", "mindcloak", "kaitrance"},
    Occultist = {"astralform", "lifevision", "devilmark", "distortedaura", "shroud", "tentacles", },
    Paladin = {"gripping", "faith", "fervour", "retribution", "dawnhand", "unbowed", "weathering"},
    Pariah = {},
    Priest = {"heresy", "inspiration", "thermalshield", "earthshield", "enduranceblessing", "frostshield", "willpowerblessing"},
    Psion = {"secondskin", "rupturesight", "guidedstrike", "psitranscend"},
    Runewarden = {"weathering", "gripping", "resistance"},
    Sentinel = {"barkskin", "evasion"},
    Serpent = {"weaving", "hiding", "ghost", "scales", "pacing", "shroud", "secondsight"},
    Shaman = {"gripping"},
    Sylvan = {"barkskin", "flailingstaff"},
    Unnamable = {"gripping", "weathering", "resistance"},
    Dragon = {"dragonarmour", "dragonbreath"},
    ["air Elemental Lord"] = {},
    ["water Elemental Lord"] = {},
    ["fire Elemental Lord"] = {},
    ["earth Elemental Lord"] = {},
}

local WepSpec = {
  ["SnB"] = {},
  ["DwC"] = {"blademastery"},
  ["DwB"] = {},
  ["2H"]  = {},
}
if arg == nil then
defcount = 0
cecho("\n\n<ansi_yellow>Defences for: <cyan>"..Legacy.Curing.Defs.currentset:upper())
cecho("\n\n<ansi_white>Non-Class Specific Defences\n")
table.sort(defs)
for k,v in pairs(defs) do
  if defcount < 3 then
    cecho("<DimGray>[")
    if table.contains(Legacy.Curing.Defs.temp.keepup, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, v)) send("curing priority defense "..v.." reset") Keepup() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() if not table.contains(Legacy.Curing.Defs.temp.defences, v) then table.insert(Legacy.Curing.Defs.temp.defences, v)end table.insert(Legacy.Curing.Defs.temp.keepup, v) send("curing priority defense "..v.." 25") Keepup() end, "Click to add to Defences", true)
    end
  local str = #v
  local i = 0
  while i < (15 - str) do
    echo(" ")
    i = i + 1
  end
  defcount = defcount + 1
  elseif defcount >= 3 then
   echo("\n\n")
   defcount = 1
   cecho("<DimGray>[")
    if table.contains(Legacy.Curing.Defs.temp.keepup, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, v)) send("curing priority defense "..v.." reset") Keepup() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() if not table.contains(Legacy.Curing.Defs.temp.defences, v) then table.insert(Legacy.Curing.Defs.temp.defences, v)end table.insert(Legacy.Curing.Defs.temp.keepup, v) send("curing priority defense "..v.." 25") Keepup() end, "Click to add to Defences", true)
    end
    local str = #v
    local i = 0
    while i < (15 - str) do
      echo(" ")
      i = i + 1
    end
  end
end

if Legacy[gmcp.Char.Status.name].class:match("Dragon") then
  defcount = 0
  cecho("\n\n<ansi_white>Class Specific Defences\n")
  for k,v in pairs(Class["Dragon"]) do
    if defcount < 3 then
      cecho("<DimGray>[")
      if table.contains(Legacy.Curing.Defs.temp.keepup, v) then
        cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, v)) send("curing priority defense "..v.." reset") Keepup() end, "Click to remove from Defences", true)
      else
        cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() if not table.contains(Legacy.Curing.Defs.temp.defences, v) then table.insert(Legacy.Curing.Defs.temp.defences, v)end table.insert(Legacy.Curing.Defs.temp.keepup, v)  send("curing priority defense "..v.." 25") Keepup() end, "Click to add to Defences", true)
      end
      local str = #v
      local i = 0
      while i < (15 - str) do
        echo(" ")
        i = i + 1
      end
      defcount = defcount + 1
   elseif defcount >= 3 then
    echo("\n\n")
    defcount = 1
    cecho("<DimGray>[")
    if table.contains(Legacy.Curing.Defs.temp.keepup, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, v)) send("curing priority defense "..v.." reset") Keepup() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() if not table.contains(Legacy.Curing.Defs.temp.defences, v) then table.insert(Legacy.Curing.Defs.temp.defences, v)end table.insert(Legacy.Curing.Defs.temp.keepup, v) send("curing priority defense "..v.." 25") Keepup() end, "Click to add to Defences", true)
    end
      local str = #v
      local i = 0
      while i < (15 - str) do
        echo(" ")
        i = i + 1
      end
    end
  end 
else
  defcount = 0
  cecho("\n\n<ansi_white>Class Specific Defences\n")
  for k,v in pairs(Class[gmcp.Char.Status.class]) do
    if defcount < 3 then
      cecho("<DimGray>[")
      if table.contains(Legacy.Curing.Defs.temp.keepup, v) then
        cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, v)) send("curing priority defense "..v.." reset") Keepup() end, "Click to remove from Defences", true)
      else
        cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() if not table.contains(Legacy.Curing.Defs.temp.defences, v) then table.insert(Legacy.Curing.Defs.temp.defences, v)end table.insert(Legacy.Curing.Defs.temp.keepup, v) send("curing priority defense "..v.." 25") Keepup() end, "Click to add to Defences", true)
      end
      local str = #v
      local i = 0
      while i < (15 - str) do
        echo(" ")
        i = i + 1
      end
      defcount = defcount + 1
   elseif defcount >= 3 then
    echo("\n\n")
    defcount = 1
    cecho("<DimGray>[")
    if table.contains(Legacy.Curing.Defs.temp.keepup, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, v)) send("curing priority defense "..v.." reset") Keepup() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() if not table.contains(Legacy.Curing.Defs.temp.defences, v) then table.insert(Legacy.Curing.Defs.temp.defences, v)end table.insert(Legacy.Curing.Defs.temp.keepup, v) send("curing priority defense "..v.." 25") Keepup() end, "Click to add to Defences", true)
    end
    local str = #v
    local i = 0
    while i < (15 - str) do
      echo(" ")
      i = i + 1
    end
   end
  end
end

local warriors = {"Paladin", "Runewarden", "Unnamable", "Infernal"}

if table.contains(warriors, gmcp.Char.Status.class) then
  defcount = 0
  cecho("\n\nWeapon Spec Specific Defences\n")
  for k,v in pairs(WepSpec[Legacy[gmcp.Char.Status.name].wepspec]) do
    if defcount < 3 then
      cecho("<DimGray>[")
      if table.contains(Legacy.Curing.Defs.temp.keepup, v) then
        cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, v)) send("curing priority defense "..v.." reset") Keepup() end, "Click to remove from Defences", true)
      else
        cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() if not table.contains(Legacy.Curing.Defs.temp.defences, v) then table.insert(Legacy.Curing.Defs.temp.defences, v)end table.insert(Legacy.Curing.Defs.temp.keepup, v)  send("curing priority defense "..v.." 25") Keepup() end, "Click to add to Defences", true)
      end
      local str = #v
      local i = 0
      while i < (15 - str) do
        echo(" ")
        i = i + 1
      end
      defcount = defcount + 1
   elseif defcount >= 3 then
    echo("\n\n")
    defcount = 1
    cecho("<DimGray>[")
    if table.contains(Legacy.Curing.Defs.temp.keepup, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function()table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v))  table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, v)) send("curing priority defense "..v.." reset") Keepup() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() if not table.contains(Legacy.Curing.Defs.temp.defences, v) then table.insert(Legacy.Curing.Defs.temp.defences, v)end table.insert(Legacy.Curing.Defs.temp.keepup, v) send("curing priority defense "..v.." 25") Keepup() end, "Click to add to Defences", true)
    end
    local str = #v
    local i = 0
    while i < (15 - str) do
      echo(" ")
      i = i + 1
    end
   end
  end
end
elseif arg then
  if Legacy.Curing.Defs.tracking[arg:lower()] == 25 then
    Legacy.echo("Removed '<gold>"..arg:title().."<white>' from keepup.")
    send("curing priority defense "..arg.." reset")
    table.remove(Legacy.Curing.Defs.temp.keepup, table.index_of(Legacy.Curing.Defs.temp.keepup, arg))
  elseif Legacy.Curing.Defs.tracking[arg:lower()] == 0 then
    Legacy.echo("Added '<gold>"..arg:title().."<white>' to keepup.")
    send("curing priority defense "..arg.." 25")
    table.insert(Legacy.Curing.Defs.temp.keepup, arg)
  elseif Legacy.Curing.Defs.tracking[arg:lower()] == nil then
    Legacy.echo("<red>The Defense '<gold>"..arg:title().."<red>' is not being tracked or is not a defense.")    
  end
end 
Legacy.Curing.Defs[Legacy.Curing.Defs.currentset] = table.deepcopy(Legacy.Curing.Defs.temp)
end
end