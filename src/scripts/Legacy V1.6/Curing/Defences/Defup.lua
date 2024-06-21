function Defup()
  if Legacy then

    local warriors = {"Paladin", "Runewarden", "Unnamable", "Infernal"}
    Legacy.Curing.Defs.temp = {defences = {}, keepup = {}}
    if Legacy.Curing.Defs[gmcp.Char.Status.class..Legacy[gmcp.Char.Status.name].wepspec] then
      if (Legacy.Curing.Defs[gmcp.Char.Status.class..Legacy[gmcp.Char.Status.name].wepspec] and Legacy[gmcp.Char.Status.name].wepspec ~= "") then
        Dset(gmcp.Char.Status.class..Legacy[gmcp.Char.Status.name].wepspec)
      end
    elseif not Legacy.Curing.Defs[gmcp.Char.Status.class..Legacy[gmcp.Char.Status.name].wepspec] and Legacy[gmcp.Char.Status.name].wepspec ~= "NA" then
      Legacy.bigEcho("This is the First time you are using this Weapon Spec!", "SeaGreen" ,"red") 
      Legacy.bigEcho("Please use 'keepup' and 'defs' to set up your defences", "SeaGreen", "red")
      Legacy.Curing.Defs[gmcp.Char.Status.class..Legacy[gmcp.Char.Status.name].wepspec] = (table.deepcopy(Legacy.Curing.Defs[gmcp.Char.Status.class]) or table.deepcopy(Legacy.Curing.Defs.Burst))
      Dset(gmcp.Char.Status.class..Legacy[gmcp.Char.Status.name].wepspec)
    elseif Legacy.Curing.Defs[gmcp.Char.Status.class] then
      Dset(gmcp.Char.Status.class)
    elseif Legacy.Curing.Defs["Dragon"] and gmcp.Char.Status.class:match("Dragon") then
      Dset(Dragon)
    elseif gmcp.Char.Status.class:match("Dragon") and not Legacy.Curing.Defs["Dragon"] then
      Legacy.bigEcho("This is the First time you are using Dragon!", "SeaGreen" ,"red") 
      Legacy.bigEcho("Please use 'keepup' and 'defs' to set up your defences", "SeaGreen", "red")
      Legacy.Curing.Defs["Dragon"] = table.deepcopy(Legacy.Curing.Defs.legacy)
      Dset(Dragon)
    elseif Legacy.Curing.Defs.currentset == "legacy" then
      Legacy.bigEcho("This is the First time you are using this Class!", "SeaGreen" ,"red") 
      Legacy.bigEcho("Please use 'keepup' and 'defs' to set up your defences", "SeaGreen", "red")
      Legacy.Curing.Defs[gmcp.Char.Status.class] = table.deepcopy(Legacy.Curing.Defs.legacy)
      Dset(gmcp.Char.Status.class)
    end
  end
end