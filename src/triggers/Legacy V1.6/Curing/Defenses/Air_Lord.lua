if Legacy then
  Legacy.Curing.Defs.temp = {defences = {}, keepup = {}}
  if Legacy.Curing.Defs["AirLord"] then
   Dset(AirLord)
  else
    Legacy.bigEcho("This is the First time you are using this Class!", "SeaGreen" ,"red") 
    Legacy.bigEcho("Please use 'keepup' and 'defs' to set up your defences", "SeaGreen", "red")
    Legacy.Curing.Defs["AirLord"] = table.deepcopy(Legacy.Curing.Defs.legacy)
    Dset(AirLord)
  end
end
    