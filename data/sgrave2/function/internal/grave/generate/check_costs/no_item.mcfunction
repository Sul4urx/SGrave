#<< grave/open

## Game Modes
scoreboard players set .check_costs.gamemodes sgrave2.temp_var 1
execute if score <grave_generation_costs.no_item.gamemodes.survival> sgrave2.config matches 0 if entity @s[gamemode=survival] run return run scoreboard players set .check_costs.gamemodes sgrave2.temp_var 0
execute if score <grave_generation_costs.no_item.gamemodes.adventure> sgrave2.config matches 0 if entity @s[gamemode=adventure] run return run scoreboard players set .check_costs.gamemodes sgrave2.temp_var 0
execute if score <grave_generation_costs.no_item.gamemodes.creative> sgrave2.config matches 0 if entity @s[gamemode=creative] run return run scoreboard players set .check_costs.gamemodes sgrave2.temp_var 0

## Items
scoreboard players set .check_costs.items sgrave2.temp_var 1

## XP
scoreboard players set .check_costs.xp sgrave2.temp_var 0

execute store result score .player_xp sgrave2.temp_var run data get entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.before_death.levels
execute if score .player_xp sgrave2.temp_var >= <grave_generation_costs.no_item.xp.levels> sgrave2.config run scoreboard players set .check_costs.xp sgrave2.temp_var 1
