if matches[2] then
  send("dragonform "..matches[2])
elseif matches[2] == nil then
  local ExtraMostBestestDragon = 0
  local ExtraMostBestestDragoncolor = ""
  for k,v in pairs(Legacy.Curing.Dragonform) do
    if v > ExtraMostBestestDragon then
      ExtraMostBestestDragon = v
      ExtraMostBestestDragoncolor = k
    end
  end
  send("dragonform "..ExtraMostBestestDragoncolor)
end