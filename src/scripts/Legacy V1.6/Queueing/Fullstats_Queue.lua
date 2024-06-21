function fullstats(arg)
  if arg ~= nil then
    --Make a table of stats
    statsQueue = statsQueue or {}
    --Push argument into this table
    table.insert(statsQueue, arg)
      send("curing sipmana 99")
      send("curing siphealth 99")
      fullstats()
  else

    if Legacy[gmcp.Char.Status.name].Vitals.hpPer >= 100 and Legacy[gmcp.Char.Status.name].Vitals.mpPer >= 100 then
      send("queue addclear free " .. statsQueue[1])
      tempTimer(4, [[send("curing sipmana 80")
      send("curing siphealth 80")]])
      table.remove(statsQueue, 1)
    else
      if Legacy[gmcp.Char.Status.name].Vitals.mpPer == 99 and Legacy.Curing.bal.sip then
        send("sip mana")
      elseif Legacy[gmcp.Char.Status.name].Vitals.hpPer == 99 and Legacy.Curing.bal.sip then
        send("sip health")
      end
      tempTimer(1, [[fullstats()]])
    end
  end
end