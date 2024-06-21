if Legacy then
sipTime = stopStopWatch(sipStopwatch)
Legacy.Curing.bal.sip = true

if sipTime and Legacy.Settings.Curing.cureEchos then
  if sipType == "mana" then
    cecho(" <cyan>Mana<DimGray> (<gold>"..sipTime.."<DimGray>)")
  elseif sipType == "health" then
    cecho(" <green>Health<DimGray> (<gold>"..sipTime.."<DimGray>)")
  end
end
resetStopWatch(sipStopwatch)
end