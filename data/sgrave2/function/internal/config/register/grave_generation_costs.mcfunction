#<< config/register

# Register sub-configs for Grave Generation Costs config

## With Item

##> Items
execute unless data storage sgrave2:common configs.grave_generation_costs.with_item.items[] run data modify storage sgrave2:common configs.grave_generation_costs.with_item.items set value [{}]

##> XP
execute unless score <grave_generation_costs.with_item.xp.levels> sgrave2.config matches 0.. run scoreboard players set <grave_generation_costs.with_item.xp.levels> sgrave2.config 0

execute store result storage sgrave2:common configs.grave_generation_costs.with_item.xp.levels.value int 1 run scoreboard players get <grave_generation_costs.with_item.xp.levels> sgrave2.config

data modify storage sgrave2:common configs.grave_generation_costs.with_item.xp.levels.text_value set string storage sgrave2:common configs.grave_generation_costs.with_item.xp.levels.value

##> Game Modes
execute unless score <grave_generation_costs.with_item.gamemodes.survival> sgrave2.config matches 0..1 run scoreboard players set <grave_generation_costs.with_item.gamemodes.survival> sgrave2.config 1
execute unless score <grave_generation_costs.with_item.gamemodes.adventure> sgrave2.config matches 0..1 run scoreboard players set <grave_generation_costs.with_item.gamemodes.adventure> sgrave2.config 1
execute unless score <grave_generation_costs.with_item.gamemodes.creative> sgrave2.config matches 0..1 run scoreboard players set <grave_generation_costs.with_item.gamemodes.creative> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.survival.value byte 1 run scoreboard players get <grave_generation_costs.with_item.gamemodes.survival> sgrave2.config
execute store result storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.adventure.value byte 1 run scoreboard players get <grave_generation_costs.with_item.gamemodes.adventure> sgrave2.config
execute store result storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.creative.value byte 1 run scoreboard players get <grave_generation_costs.with_item.gamemodes.creative> sgrave2.config

data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.survival{value:0b}.text_value set value "§cS"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.adventure{value:0b}.text_value set value "§cA"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.creative{value:0b}.text_value set value "§cC"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.survival{value:1b}.text_value set value "§aS"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.adventure{value:1b}.text_value set value "§aA"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.creative{value:1b}.text_value set value "§aC"


## Without Item

##> XP
execute unless score <grave_generation_costs.no_item.xp.levels> sgrave2.config matches 0.. run scoreboard players set <grave_generation_costs.no_item.xp.levels> sgrave2.config 3

execute store result storage sgrave2:common configs.grave_generation_costs.no_item.xp.levels.value int 1 run scoreboard players get <grave_generation_costs.no_item.xp.levels> sgrave2.config

data modify storage sgrave2:common configs.grave_generation_costs.no_item.xp.levels.text_value set string storage sgrave2:common configs.grave_generation_costs.no_item.xp.levels.value

##> Game Modes
execute unless score <grave_generation_costs.no_item.gamemodes.survival> sgrave2.config matches 0..1 run scoreboard players set <grave_generation_costs.no_item.gamemodes.survival> sgrave2.config 1
execute unless score <grave_generation_costs.no_item.gamemodes.adventure> sgrave2.config matches 0..1 run scoreboard players set <grave_generation_costs.no_item.gamemodes.adventure> sgrave2.config 1
execute unless score <grave_generation_costs.no_item.gamemodes.creative> sgrave2.config matches 0..1 run scoreboard players set <grave_generation_costs.no_item.gamemodes.creative> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.survival.value byte 1 run scoreboard players get <grave_generation_costs.no_item.gamemodes.survival> sgrave2.config
execute store result storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.adventure.value byte 1 run scoreboard players get <grave_generation_costs.no_item.gamemodes.adventure> sgrave2.config
execute store result storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.creative.value byte 1 run scoreboard players get <grave_generation_costs.no_item.gamemodes.creative> sgrave2.config

data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.survival{value:0b}.text_value set value "§cS"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.adventure{value:0b}.text_value set value "§cA"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.creative{value:0b}.text_value set value "§cC"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.survival{value:1b}.text_value set value "§aS"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.adventure{value:1b}.text_value set value "§aA"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.creative{value:1b}.text_value set value "§aC"