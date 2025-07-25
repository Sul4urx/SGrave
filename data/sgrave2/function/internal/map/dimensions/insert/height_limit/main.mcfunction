## Get minimum build height limit
execute store result storage sgrave2:common temp.args.height int 1 run scoreboard players set .height sgrave2.temp_var -2016
function sgrave2:internal/map/dimensions/insert/height_limit/test/min with storage sgrave2:common temp.args

## Get maximum build height limit
execute store result storage sgrave2:common temp.args.height int 1 run scoreboard players set .height sgrave2.temp_var 2031
function sgrave2:internal/map/dimensions/insert/height_limit/test/max with storage sgrave2:common temp.args

## Store values
function sgrave2:internal/map/dimensions/insert/height_limit/test/store with entity @s