if Legacy then
--raiseEvent("Legacy_Eat")
Legacy.Curing.bal.eat = false
eatStopwatch = eatStopwatch or createStopWatch()
startStopWatch(eatStopwatch)
send("outr "..matches[2])
--Legacy.echo(matches[2])
end