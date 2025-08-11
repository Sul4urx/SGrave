#<< grave/break

## Spawn XP orb
summon minecraft:experience_orb ~ ~ ~ {Tags: ["sgrave2.temp.grave.xp_to_give_back", "sgrave2.grave.xp"], Age: -32768s}

## Set XP despawn time
scoreboard players operation @n[tag=sgrave2.temp.grave.xp_to_give_back] sgrave2.despawn_time = (config:dropped_contents/xp_despawn_time) sgrave2.config

## Set XP value
data modify entity @n[tag=sgrave2.temp.grave.xp_to_give_back] Value set from entity @s item.components.minecraft:custom_data.sgrave2:common.xp.total

## Remove temp tag
tag @e[tag=sgrave2.temp.grave.xp_to_give_back] remove sgrave2.temp.grave.xp_to_give_back