#<< grave/generate/grave_placement_restrictions

## Get max build height limit value
execute store result score .y_pos sgrave2.temp_var run data get entity @s Pos[1]

## If y position of grave > max build height limit of this dimension,
## then set y position to the max build height limit
execute if score .y_pos sgrave2.temp_var > .max_height sgrave2.temp_var store result storage sgrave2:common temp.args.y_pos int 1 run scoreboard players get .max_height sgrave2.temp_var
execute if score .y_pos sgrave2.temp_var > .max_height sgrave2.temp_var as @n[tag=sgrave2.temp.grave.base] at @s run function sgrave2:internal/grave/generate/grave_placement_restrictions/teleport with storage sgrave2:common temp.args