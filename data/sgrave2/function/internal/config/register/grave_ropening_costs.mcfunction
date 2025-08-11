#<< config/register

# Register sub-configs for Grave Remote Opening Costs config

## Owners

##> Items
execute unless data storage sgrave2:common configs.costs.grave_ropening_costs.owners.items[] run data modify storage sgrave2:common configs.costs.grave_ropening_costs.owners.items set value [{}]

##> XP
execute unless score (costs/grave_ropening_costs/owners/xp) sgrave2.config matches 0.. run scoreboard players set (costs/grave_ropening_costs/owners/xp) sgrave2.config 0

execute store result storage sgrave2:common configs.costs.grave_ropening_costs.owners.xp.levels.value int 1 run scoreboard players get (costs/grave_ropening_costs/owners/xp) sgrave2.config

data modify storage sgrave2:common configs.costs.grave_ropening_costs.owners.xp.levels.text_value set string storage sgrave2:common configs.costs.grave_ropening_costs.owners.xp.levels.value

##> Game Modes
execute unless score (costs/grave_ropening_costs/owners/gamemodes/survival) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_ropening_costs/owners/gamemodes/survival) sgrave2.config 0
execute unless score (costs/grave_ropening_costs/owners/gamemodes/adventure) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_ropening_costs/owners/gamemodes/adventure) sgrave2.config 0
execute unless score (costs/grave_ropening_costs/owners/gamemodes/creative) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_ropening_costs/owners/gamemodes/creative) sgrave2.config 0

execute store result storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.survival.value byte 1 run scoreboard players get (costs/grave_ropening_costs/owners/gamemodes/survival) sgrave2.config
execute store result storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.adventure.value byte 1 run scoreboard players get (costs/grave_ropening_costs/owners/gamemodes/adventure) sgrave2.config
execute store result storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.creative.value byte 1 run scoreboard players get (costs/grave_ropening_costs/owners/gamemodes/creative) sgrave2.config

data modify storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.survival{value:0b}.text_value set value "§cS"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.adventure{value:0b}.text_value set value "§cA"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.creative{value:0b}.text_value set value "§cC"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.survival{value:1b}.text_value set value "§aS"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.adventure{value:1b}.text_value set value "§aA"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.owners.gamemodes.creative{value:1b}.text_value set value "§aC"


## Non-Owners

##> Items
execute unless data storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.items[] run data modify storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.items set value [{}]

##> XP
execute unless score (costs/grave_ropening_costs/non_owners/xp) sgrave2.config matches 0.. run scoreboard players set (costs/grave_ropening_costs/non_owners/xp) sgrave2.config 0

execute store result storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.xp.levels.value int 1 run scoreboard players get (costs/grave_ropening_costs/non_owners/xp) sgrave2.config

data modify storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.xp.levels.text_value set string storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.xp.levels.value

##> Game Modes
execute unless score (costs/grave_ropening_costs/non_owners/gamemodes/survival) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_ropening_costs/non_owners/gamemodes/survival) sgrave2.config 0
execute unless score (costs/grave_ropening_costs/non_owners/gamemodes/adventure) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_ropening_costs/non_owners/gamemodes/adventure) sgrave2.config 0
execute unless score (costs/grave_ropening_costs/non_owners/gamemodes/creative) sgrave2.config matches 0..1 run scoreboard players set (costs/grave_ropening_costs/non_owners/gamemodes/creative) sgrave2.config 0

execute store result storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.survival.value byte 1 run scoreboard players get (costs/grave_ropening_costs/non_owners/gamemodes/survival) sgrave2.config
execute store result storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.adventure.value byte 1 run scoreboard players get (costs/grave_ropening_costs/non_owners/gamemodes/adventure) sgrave2.config
execute store result storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.creative.value byte 1 run scoreboard players get (costs/grave_ropening_costs/non_owners/gamemodes/creative) sgrave2.config

data modify storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.survival{value:0b}.text_value set value "§cS"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.adventure{value:0b}.text_value set value "§cA"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.creative{value:0b}.text_value set value "§cC"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.survival{value:1b}.text_value set value "§aS"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.adventure{value:1b}.text_value set value "§aA"
data modify storage sgrave2:common configs.costs.grave_ropening_costs.non_owners.gamemodes.creative{value:1b}.text_value set value "§aC"