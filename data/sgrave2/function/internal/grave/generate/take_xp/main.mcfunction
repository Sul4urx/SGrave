#<< grave/generate

## Store levels and points
execute store result score .xp.levels sgrave2.temp_var store result entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.levels int 1 run xp query @s levels
execute store result score .xp.points sgrave2.temp_var store result entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.points int 1 run xp query @s points

## Calculate total XP
function sgrave2:internal/grave/generate/take_xp/calculate_total/main
execute store result entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.total int 1 run scoreboard players get .xp.total sgrave2.temp_var

## Take away all XP
xp set @s 0 points
xp set @s 0 levels

