#<< config/register

# Register sub-configs for XP Distribution config

## Grave Generation Fail

##> Remove
execute unless score (graves/xp_distribution/grave_generation_fail/remove) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_fail/remove) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_fail.remove int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/remove) sgrave2.config

data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_fail.remove set string storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_fail.remove

##> Keep
execute unless score (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config 2

execute store result storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_fail.keep int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config

data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_fail.keep set string storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_fail.keep

##> Total
scoreboard players operation (graves/xp_distribution/grave_generation_fail/total) sgrave2.config = (graves/xp_distribution/grave_generation_fail/remove) sgrave2.config
scoreboard players operation (graves/xp_distribution/grave_generation_fail/total) sgrave2.config += (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config

execute store result storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_fail.total int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/total) sgrave2.config

execute if score (graves/xp_distribution/grave_generation_fail/total) sgrave2.config matches 1.. run data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_fail.total set string storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_fail.total

execute unless score (graves/xp_distribution/grave_generation_fail/total) sgrave2.config matches 1.. run data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_fail.total set value "§c0"

## Grave Generation Success

##> Remove
execute unless score (graves/xp_distribution/grave_generation_success/remove) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/remove) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_success.remove int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/remove) sgrave2.config

data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_success.remove set string storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_success.remove

##> Keep
execute unless score (graves/xp_distribution/grave_generation_success/keep) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/keep) sgrave2.config 0

execute store result storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_success.keep int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/keep) sgrave2.config

data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_success.keep set string storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_success.keep

##> Take
execute unless score (graves/xp_distribution/grave_generation_success/take) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/take) sgrave2.config 11

execute store result storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_success.take int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/take) sgrave2.config

data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_success.take set string storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_success.take

##> Total
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) sgrave2.config = (graves/xp_distribution/grave_generation_success/remove) sgrave2.config
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) sgrave2.config += (graves/xp_distribution/grave_generation_success/keep) sgrave2.config
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) sgrave2.config += (graves/xp_distribution/grave_generation_success/take) sgrave2.config

execute store result storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_success.total int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/total) sgrave2.config

execute if score (graves/xp_distribution/grave_generation_success/total) sgrave2.config matches 1.. run data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_success.total set string storage sgrave2:common configs.value.graves.xp_distribution.grave_generation_success.total

execute unless score (graves/xp_distribution/grave_generation_success/total) sgrave2.config matches 1.. run data modify storage sgrave2:common configs.text.graves.xp_distribution.grave_generation_success.total set value "§c0"


