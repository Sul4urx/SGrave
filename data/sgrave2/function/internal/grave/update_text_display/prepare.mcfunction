#<< grave/main

# Prepare to show despawn time

## Convert from ticks to seconds, minutes and hours
scoreboard players operation .despawn_time.seconds sgrave2.temp_var = @s sgrave2.despawn_time
scoreboard players operation .despawn_time.seconds sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.minutes sgrave2.temp_var = @s sgrave2.despawn_time
scoreboard players operation .despawn_time.minutes sgrave2.temp_var /= (60) sgrave2.var
scoreboard players operation .despawn_time.minutes sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.hours sgrave2.temp_var = @s sgrave2.despawn_time
scoreboard players operation .despawn_time.hours sgrave2.temp_var /= (3600) sgrave2.var
scoreboard players operation .despawn_time.minutes sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.hours sgrave2.temp_var = @s sgrave2.despawn_time
scoreboard players operation .despawn_time.hours sgrave2.temp_var /= (3600) sgrave2.var


## Prepare text
execute if score .despawn_time.hours sgrave2.temp_var matches 99.. run data modify storage sgrave2:common temp.args.despawn_time_text set value '{"text":"99+ hours","color":"red"}'
execute if score .despawn_time.hours sgrave2.temp_var matches 1..98 run data modify storage sgrave2:common temp.args.despawn_time_text set value '{"translate":"%shr : %smin","color":"red","with":[{"score":{"objective":"sgrave2.temp_var","name":".despawn_time.hours"}},{"score":{"objective":"sgrave2.temp_var","name":".despawn_time.minutes"}}]}'
execute if score .despawn_time.hours sgrave2.temp_var matches 0 if score .despawn_time.minutes sgrave2.temp_var matches 1.. run data modify storage sgrave2:common temp.args.despawn_time_text set value '{"translate":"%smin : %ss","color":"red","with":[{"score":{"objective":"sgrave2.temp_var","name":".despawn_time.minutes"}},{"score":{"objective":"sgrave2.temp_var","name":".despawn_time.seconds"}}]}'
execute if score .despawn_time.hours sgrave2.temp_var matches 0 if score .despawn_time.minutes sgrave2.temp_var matches 0 run data modify storage sgrave2:common temp.args.despawn_time_text set value '{"translate":"%ss","color":"red","with":[{"score":{"objective":"sgrave2.temp_var","name":".despawn_time.seconds"}}]}'

## Update current text display
function sgrave2:internal/grave/update_text_display/update with storage sgrave2:common temp.args