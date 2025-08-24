#<< config/register

# Register sub-configs for Grave Opening-Breaking Costs config

## Owners

##> Items
execute unless data storage sgrave2:common configs.value.costs.grave_opening_costs.owners.items[] run data modify storage sgrave2:common configs.value.costs.grave_opening_costs.owners.items set value [{}]

##> XP
execute unless score (costs/grave_opening_costs/owners/xp) sgrave2.config matches 0.. run scoreboard players set (costs/grave_opening_costs/owners/xp) sgrave2.config 0

execute store result storage sgrave2:common configs.value.costs.grave_opening_costs.owners.xp.levels int 1 run scoreboard players get (costs/grave_opening_costs/owners/xp) sgrave2.config

data modify storage sgrave2:common configs.text.costs.grave_opening_costs.owners.xp.levels set string storage sgrave2:common configs.value.costs.grave_opening_costs.owners.xp.levels

##> Game Modes
execute unless score (costs/grave_opening_costs/owners/gamemodes/survival) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_opening_costs/owners/gamemodes/survival) sgrave2.config 1
execute unless score (costs/grave_opening_costs/owners/gamemodes/adventure) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_opening_costs/owners/gamemodes/adventure) sgrave2.config 1
execute unless score (costs/grave_opening_costs/owners/gamemodes/creative) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_opening_costs/owners/gamemodes/creative) sgrave2.config 1

execute store result storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes.survival byte 1 run scoreboard players get (costs/grave_opening_costs/owners/gamemodes/survival) sgrave2.config
execute store result storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes.adventure byte 1 run scoreboard players get (costs/grave_opening_costs/owners/gamemodes/adventure) sgrave2.config
execute store result storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes.creative byte 1 run scoreboard players get (costs/grave_opening_costs/owners/gamemodes/creative) sgrave2.config

execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes{survival:0b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.owners.gamemodes.survival set value "§cS"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes{adventure:0b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.owners.gamemodes.adventure set value "§cA"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes{creative:0b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.owners.gamemodes.creative set value "§cC"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes{survival:1b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.owners.gamemodes.survival set value "§aS"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes{adventure:1b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.owners.gamemodes.adventure set value "§aA"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.owners.gamemodes{creative:1b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.owners.gamemodes.creative set value "§aC"


## Non-Owners

##> Items
execute unless data storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.items[] run data modify storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.items set value [{}]

##> XP
execute unless score (costs/grave_opening_costs/non_owners/xp) sgrave2.config matches 0.. run scoreboard players set (costs/grave_opening_costs/non_owners/xp) sgrave2.config 0

execute store result storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.xp.levels int 1 run scoreboard players get (costs/grave_opening_costs/non_owners/xp) sgrave2.config

data modify storage sgrave2:common configs.text.costs.grave_opening_costs.non_owners.xp.levels set string storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.xp.levels

##> Game Modes
execute unless score (costs/grave_opening_costs/non_owners/gamemodes/survival) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_opening_costs/non_owners/gamemodes/survival) sgrave2.config 1
execute unless score (costs/grave_opening_costs/non_owners/gamemodes/adventure) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_opening_costs/non_owners/gamemodes/adventure) sgrave2.config 1
execute unless score (costs/grave_opening_costs/non_owners/gamemodes/creative) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_opening_costs/non_owners/gamemodes/creative) sgrave2.config 1

execute store result storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes.survival byte 1 run scoreboard players get (costs/grave_opening_costs/non_owners/gamemodes/survival) sgrave2.config
execute store result storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes.adventure byte 1 run scoreboard players get (costs/grave_opening_costs/non_owners/gamemodes/adventure) sgrave2.config
execute store result storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes.creative byte 1 run scoreboard players get (costs/grave_opening_costs/non_owners/gamemodes/creative) sgrave2.config

execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes{survival:0b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.non_owners.gamemodes.survival set value "§cS"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes{adventure:0b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.non_owners.gamemodes.adventure set value "§cA"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes{creative:0b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.non_owners.gamemodes.creative set value "§cC"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes{survival:1b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.non_owners.gamemodes.survival set value "§aS"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes{adventure:1b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.non_owners.gamemodes.adventure set value "§aA"
execute if data storage sgrave2:common configs.value.costs.grave_opening_costs.non_owners.gamemodes{creative:1b} run data modify storage sgrave2:common configs.text.costs.grave_opening_costs.non_owners.gamemodes.creative set value "§aC"