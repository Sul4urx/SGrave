# Currently unused since running this every tick causes a lot of lag

## Update active grave
execute store result storage sgrave2:common temp.args.pid int 1 run scoreboard players get @s sgrave2.pid
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args

data modify storage sgrave2:common players[-1].active_graves set from storage sgrave2:common players[-1].graves
data remove storage sgrave2:common players[-1].active_graves[{data:{status:{destroyed:1b}}}]