function Defs()
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
    Paladin = {"gripping", "faith", "fervour", "retribution", "dawnhand", "unbowed"},
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
cecho("\n\n<ansi_yellow>Defences for: <cyan>"..Legacy.Curing.Defs.currentset:upper())
defcount = 0
cecho("\n\nNon-Class Specific Defences\n")
table.sort(defs)
for k,v in pairs(defs) do
  if defcount < 3 then
    cecho("<DimGray>[")
    if table.contains(Legacy.Curing.Defs.temp.defences, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) send("curing priority defense "..v.." reset") Defs() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() table.insert(Legacy.Curing.Defs.temp.defences, v) send("curing priority defense "..v.." 25") Defs() end, "Click to add to Defences", true)
    end
  local str = #v
  local i = 0
  while i < (15 - str) do
    echo(" ")
    i = i + 1
  end
  defcount = defcount + 1
  --echo(" "..defcount)
  elseif defcount >= 3 then
   echo("\n\n")
   defcount = 1
   cecho("<DimGray>[")
    if table.contains(Legacy.Curing.Defs.temp.defences, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) send("curing priority defense "..v.." reset") Defs() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() table.insert(Legacy.Curing.Defs.temp.defences, v) send("curing priority defense "..v.." 25") Defs() end, "Click to add to Defences", true)
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
  cecho("\n\nClass Specific Defences\n")
  for k,v in pairs(Class["Dragon"]) do
    if defcount < 3 then
      cecho("<DimGray>[")
      if table.contains(Legacy.Curing.Defs.temp.defences, v) then
        cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) send("curing priority defense "..v.." reset") Defs() end, "Click to remove from Defences", true)
      else
        cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() table.insert(Legacy.Curing.Defs.temp.defences, v) send("curing priority defense "..v.." 25") Defs() end, "Click to add to Defences", true)
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
      if table.contains(Legacy.Curing.Defs.temp.defences, v) then
        cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) send("curing priority defense "..v.." reset") Defs() end, "Click to remove from Defences", true)
      else
        cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() table.insert(Legacy.Curing.Defs.temp.defences, v) send("curing priority defense "..v.." 25") Defs() end, "Click to add to Defences", true)
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
  cecho("\n\nClass Specific Defences\n")
  for k,v in pairs(Class[gmcp.Char.Status.class]) do
    if defcount < 3 then
      cecho("<DimGray>[")
      if table.contains(Legacy.Curing.Defs.temp.defences, v) then
        cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) send("curing priority defense "..v.." reset") Defs() end, "Click to remove from Defences", true)
      else
        cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() table.insert(Legacy.Curing.Defs.temp.defences, v) send("curing priority defense "..v.." 25") Defs() end, "Click to add to Defences", true)
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
      if table.contains(Legacy.Curing.Defs.temp.defences, v) then
        cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) send("curing priority defense "..v.." reset") Defs() end, "Click to remove from Defences", true)
      else
        cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() table.insert(Legacy.Curing.Defs.temp.defences, v) send("curing priority defense "..v.." 25") Defs() end, "Click to add to Defences", true)
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
    if table.contains(Legacy.Curing.Defs.temp.defences, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) send("curing priority defense "..v.." reset") Defs() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() table.insert(Legacy.Curing.Defs.temp.defences, v) send("curing priority defense "..v.." 25") Defs() end, "Click to add to Defences", true)
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
    if table.contains(Legacy.Curing.Defs.temp.defences, v) then
      cechoLink("<green>X<DimGray>] <SeaGreen>"..v:title(), function() table.remove(Legacy.Curing.Defs.temp.defences, table.index_of(Legacy.Curing.Defs.temp.defences, v)) send("curing priority defense "..v.." reset") Defs() end, "Click to remove from Defences", true)
    else
      cechoLink(" <DimGray>] <SeaGreen>"..v:title(), function() table.insert(Legacy.Curing.Defs.temp.defences, v) send("curing priority defense "..v.." 25") Defs() end, "Click to add to Defences", true)
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
Legacy.Curing.Defs[Legacy.Curing.Defs.currentset] = table.deepcopy(Legacy.Curing.Defs.temp)
end
end