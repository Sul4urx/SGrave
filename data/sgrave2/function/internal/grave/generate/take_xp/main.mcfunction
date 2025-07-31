#<< grave/generate

## Store levels and points
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.levels set from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.before_death.levels
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.points set from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.before_death.points

## Calculate total XP
execute store result score .xp.levels sgrave2.temp_var run data get entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.levels
execute store result score .xp.points sgrave2.temp_var run data get entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.points

function sgrave2:internal/grave/generate/take_xp/calculate_total/main

execute store result entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.total int 1 run scoreboard players get .xp.total sgrave2.temp_var

## Take away all XP
xp set @s 0 points
xp set @s 0 levels

