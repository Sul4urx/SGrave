#<< config/register

# Register sub-configs for Grave Generation Costs config

## With Item

##> Items
execute unless data storage sgrave2:common configs.grave_generation_costs.with_item.items[] run data modify storage sgrave2:common configs.grave_generation_costs.with_item.items set value [{}]

##> XP
execute unless data storage sgrave2:common configs.grave_generation_costs.with_item.xp{} run data modify storage sgrave2:common configs.grave_generation_costs.with_item.xp set value {levels: 0, weights: {fail: {remove: 1, keep: 2}, success: {remove: 1, keep: 0, take: 11}}}

##> Game Modes
execute unless score (costs/grave_generation_costs/with_item/gamemodes/survival) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/with_item/gamemodes/survival) sgrave2.config 1
execute unless score (costs/grave_generation_costs/with_item/gamemodes/adventure) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/with_item/gamemodes/adventure) sgrave2.config 1
execute unless score (costs/grave_generation_costs/with_item/gamemodes/creative) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/with_item/gamemodes/creative) sgrave2.config 1

execute store result storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.survival.value byte 1 run scoreboard players get (costs/grave_generation_costs/with_item/gamemodes/survival) sgrave2.config
execute store result storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.adventure.value byte 1 run scoreboard players get (costs/grave_generation_costs/with_item/gamemodes/adventure) sgrave2.config
execute store result storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.creative.value byte 1 run scoreboard players get (costs/grave_generation_costs/with_item/gamemodes/creative) sgrave2.config

data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.survival{value:0b}.text_value set value "§cS"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.adventure{value:0b}.text_value set value "§cA"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.creative{value:0b}.text_value set value "§cC"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.survival{value:1b}.text_value set value "§aS"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.adventure{value:1b}.text_value set value "§aA"
data modify storage sgrave2:common configs.grave_generation_costs.with_item.gamemodes.creative{value:1b}.text_value set value "§aC"


## Without Item

##> XP
execute unless data storage sgrave2:common configs.grave_generation_costs.no_item.xp{} run data modify storage sgrave2:common configs.grave_generation_costs.no_item.xp set value {levels: 3, weights: {fail: {remove: 1, keep: 2}, success: {remove: 1, keep: 0, take: 11}}}

##> Game Modes
execute unless score (costs/grave_generation_costs/no_item/gamemodes/survival) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/no_item/gamemodes/survival) sgrave2.config 1
execute unless score (costs/grave_generation_costs/no_item/gamemodes/adventure) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/no_item/gamemodes/adventure) sgrave2.config 1
execute unless score (costs/grave_generation_costs/no_item/gamemodes/creative) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/no_item/gamemodes/creative) sgrave2.config 1

execute store result storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.survival.value byte 1 run scoreboard players get (costs/grave_generation_costs/no_item/gamemodes/survival) sgrave2.config
execute store result storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.adventure.value byte 1 run scoreboard players get (costs/grave_generation_costs/no_item/gamemodes/adventure) sgrave2.config
execute store result storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.creative.value byte 1 run scoreboard players get (costs/grave_generation_costs/no_item/gamemodes/creative) sgrave2.config

data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.survival{value:0b}.text_value set value "§cS"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.adventure{value:0b}.text_value set value "§cA"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.creative{value:0b}.text_value set value "§cC"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.survival{value:1b}.text_value set value "§aS"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.adventure{value:1b}.text_value set value "§aA"
data modify storage sgrave2:common configs.grave_generation_costs.no_item.gamemodes.creative{value:1b}.text_value set value "§aC"