#<< config/register

# Register sub-configs for XP Distribution config

## Grave Generation Fail

##> Remove
execute unless score (graves/xp_distribution/grave_generation_fail/remove) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_fail/remove) sgrave2.config 1

execute store result storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.remove.value int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/remove) sgrave2.config

data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.remove.text_value set string storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.remove.value

##> Keep
execute unless score (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config 2

execute store result storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.keep.value int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config

data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.keep.text_value set string storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.keep.value

##> Total
scoreboard players operation (graves/xp_distribution/grave_generation_fail/total) sgrave2.config = (graves/xp_distribution/grave_generation_fail/remove) sgrave2.config
scoreboard players operation (graves/xp_distribution/grave_generation_fail/total) sgrave2.config += (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config

execute store result storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.total.value int 1 run scoreboard players get (graves/xp_distribution/grave_generation_fail/total) sgrave2.config

execute if score (graves/xp_distribution/grave_generation_fail/total) sgrave2.config matches 1.. run data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.total.text_value set string storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.total.value

execute unless score (graves/xp_distribution/grave_generation_fail/total) sgrave2.config matches 1.. run data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_fail.total.text_value set value "§c0"

## Grave Generation Success

##> Remove
execute unless score (graves/xp_distribution/grave_generation_success/remove) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/remove) sgrave2.config 1

execute store result storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.remove.value int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/remove) sgrave2.config

data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.remove.text_value set string storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.remove.value

##> Keep
execute unless score (graves/xp_distribution/grave_generation_success/keep) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/keep) sgrave2.config 0

execute store result storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.keep.value int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/keep) sgrave2.config

data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.keep.text_value set string storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.keep.value

##> Take
execute unless score (graves/xp_distribution/grave_generation_success/take) sgrave2.config matches 0..25 run scoreboard players set (graves/xp_distribution/grave_generation_success/take) sgrave2.config 11

execute store result storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.take.value int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/take) sgrave2.config

data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.take.text_value set string storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.take.value

##> Total
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) sgrave2.config = (graves/xp_distribution/grave_generation_success/remove) sgrave2.config
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) sgrave2.config += (graves/xp_distribution/grave_generation_success/keep) sgrave2.config
scoreboard players operation (graves/xp_distribution/grave_generation_success/total) sgrave2.config += (graves/xp_distribution/grave_generation_success/take) sgrave2.config

execute store result storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.total.value int 1 run scoreboard players get (graves/xp_distribution/grave_generation_success/total) sgrave2.config

execute if score (graves/xp_distribution/grave_generation_success/total) sgrave2.config matches 1.. run data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.total.text_value set string storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.total.value

execute unless score (graves/xp_distribution/grave_generation_success/total) sgrave2.config matches 1.. run data modify storage sgrave2:common configs.graves.xp_distribution.grave_generation_success.total.text_value set value "§c0"


