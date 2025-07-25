#<< grave/ropen

## Game Modes
scoreboard players set .check_costs.gamemodes sgrave2.temp_var 1
execute if score <grave_ropening_costs.non_owners.gamemodes.survival> sgrave2.config matches 0 if entity @s[gamemode=survival] run return run scoreboard players set .check_costs.gamemodes sgrave2.temp_var 0
execute if score <grave_ropening_costs.non_owners.gamemodes.adventure> sgrave2.config matches 0 if entity @s[gamemode=adventure] run return run scoreboard players set .check_costs.gamemodes sgrave2.temp_var 0
execute if score <grave_ropening_costs.non_owners.gamemodes.creative> sgrave2.config matches 0 if entity @s[gamemode=creative] run return run scoreboard players set .check_costs.gamemodes sgrave2.temp_var 0

## Items
execute if data storage sgrave2:common configs.grave_ropening_costs.non_owners.items[] run data modify storage sgrave2:common temp.config_copy.items set from storage sgrave2:common configs.grave_ropening_costs.non_owners.items
data modify storage sgrave2:common temp.args.value set from storage sgrave2:common temp.config_copy.items[-1]


execute store result score .loop_count sgrave2.temp_var if data storage sgrave2:common configs.grave_ropening_costs.non_owners.items[]
scoreboard players set .check_costs.items sgrave2.temp_var 0

execute unless score .loop_count sgrave2.temp_var matches 1.. run scoreboard players set .check_costs.items sgrave2.temp_var 1

execute if score .loop_count sgrave2.temp_var matches 1.. run function sgrave2:internal/grave/ropen/check_costs/non_owners/items with storage sgrave2:common temp.args

execute if score .check_costs.items sgrave2.temp_var matches 1 run function sgrave2:internal/grave/ropen/check_costs/non_owners/items/remove with storage sgrave2:common temp.args.value

## XP
scoreboard players set .check_costs.xp sgrave2.temp_var 0

execute store result score .player_xp sgrave2.temp_var run xp query @s levels
execute if score .player_xp sgrave2.temp_var >= <grave_ropening_costs.non_owners.xp.levels> sgrave2.config run scoreboard players set .check_costs.xp sgrave2.temp_var 1

execute if score .check_costs.xp sgrave2.temp_var matches 1 run function sgrave2:internal/grave/ropen/check_costs/non_owners/xp/remove with storage sgrave2:common configs.grave_ropening_costs.non_owners.xp.levels
