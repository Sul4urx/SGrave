#<< config/register

# Register sub-configs for Grave Generation Costs config

## With Item

##> Items
execute unless data storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.items[] run data modify storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.items set value [{}]

##> XP
execute unless score (costs/grave_generation_costs/with_item/xp) sgrave2.config matches 0.. run scoreboard players set (costs/grave_generation_costs/with_item/xp) sgrave2.config 0

execute store result storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.xp.levels int 1 run scoreboard players get (costs/grave_generation_costs/with_item/xp) sgrave2.config

data modify storage sgrave2:common configs.text.costs.grave_generation_costs.with_item.xp.levels set string storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.xp.levels

##> Game Modes
execute unless score (costs/grave_generation_costs/with_item/gamemodes/survival) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/with_item/gamemodes/survival) sgrave2.config 1
execute unless score (costs/grave_generation_costs/with_item/gamemodes/adventure) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/with_item/gamemodes/adventure) sgrave2.config 1
execute unless score (costs/grave_generation_costs/with_item/gamemodes/creative) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/with_item/gamemodes/creative) sgrave2.config 0

execute store result storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes.survival byte 1 run scoreboard players get (costs/grave_generation_costs/with_item/gamemodes/survival) sgrave2.config
execute store result storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes.adventure byte 1 run scoreboard players get (costs/grave_generation_costs/with_item/gamemodes/adventure) sgrave2.config
execute store result storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes.creative byte 1 run scoreboard players get (costs/grave_generation_costs/with_item/gamemodes/creative) sgrave2.config

execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes{survival:0b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.with_item.gamemodes.survival set value "§cS"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes{adventure:0b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.with_item.gamemodes.adventure set value "§cA"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes{creative:0b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.with_item.gamemodes.creative set value "§cC"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes{survival:1b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.with_item.gamemodes.survival set value "§aS"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes{adventure:1b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.with_item.gamemodes.adventure set value "§aA"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.with_item.gamemodes{creative:1b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.with_item.gamemodes.creative set value "§aC"


## Without Item

##> XP
execute unless score (costs/grave_generation_costs/no_item/xp) sgrave2.config matches 0.. run scoreboard players set (costs/grave_generation_costs/no_item/xp) sgrave2.config 3

execute store result storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.xp.levels int 1 run scoreboard players get (costs/grave_generation_costs/no_item/xp) sgrave2.config

data modify storage sgrave2:common configs.text.costs.grave_generation_costs.no_item.xp.levels set string storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.xp.levels

##> Game Modes
execute unless score (costs/grave_generation_costs/no_item/gamemodes/survival) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/no_item/gamemodes/survival) sgrave2.config 1
execute unless score (costs/grave_generation_costs/no_item/gamemodes/adventure) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/no_item/gamemodes/adventure) sgrave2.config 1
execute unless score (costs/grave_generation_costs/no_item/gamemodes/creative) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_generation_costs/no_item/gamemodes/creative) sgrave2.config 0

execute store result storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes.survival byte 1 run scoreboard players get (costs/grave_generation_costs/no_item/gamemodes/survival) sgrave2.config
execute store result storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes.adventure byte 1 run scoreboard players get (costs/grave_generation_costs/no_item/gamemodes/adventure) sgrave2.config
execute store result storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes.creative byte 1 run scoreboard players get (costs/grave_generation_costs/no_item/gamemodes/creative) sgrave2.config

execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes{survival:0b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.no_item.gamemodes.survival set value "§cS"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes{adventure:0b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.no_item.gamemodes.adventure set value "§cA"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes{creative:0b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.no_item.gamemodes.creative set value "§cC"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes{survival:1b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.no_item.gamemodes.survival set value "§aS"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes{adventure:1b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.no_item.gamemodes.adventure set value "§aA"
execute if data storage sgrave2:common configs.value.costs.grave_generation_costs.no_item.gamemodes{creative:1b} run data modify storage sgrave2:common configs.text.costs.grave_generation_costs.no_item.gamemodes.creative set value "§aC"