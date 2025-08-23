#<< config/register

# Register sub-configs for Grave Placement Restrictions config

## Above Build Height Limit
execute unless score (graves/grave_placement_restrictions_restrictions/above_build_height_limit) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/above_build_height_limit) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.above_build_height_limit byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/above_build_height_limit) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{above_build_height_limit:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.above_build_height_limit set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{above_build_height_limit:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.above_build_height_limit set value "§c✔"

## Below Build Height Limit
execute unless score (graves/grave_placement_restrictions_restrictions/below_build_height_limit) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/below_build_height_limit) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.below_build_height_limit byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/below_build_height_limit) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{below_build_height_limit:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.below_build_height_limit set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{below_build_height_limit:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.below_build_height_limit set value "§c✔"

## On Water
execute unless score (graves/grave_placement_restrictions_restrictions/on_water) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_water) sgrave2.config 0

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.on_water byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/on_water) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{on_water:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.on_water set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{on_water:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.on_water set value "§c✔"

## In Water
execute unless score (graves/grave_placement_restrictions_restrictions/in_water) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/in_water) sgrave2.config 0

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.in_water byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/in_water) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{in_water:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.in_water set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{in_water:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.in_water set value "§c✔"

## In Water and On Water sub-configs cannot be both true
execute if score (graves/grave_placement_restrictions_restrictions/on_water) sgrave2.config matches 1 if score (graves/grave_placement_restrictions_restrictions/in_water) sgrave2.config matches 1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_water) sgrave2.config 0

## On Lava
execute unless score (graves/grave_placement_restrictions_restrictions/on_lava) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_lava) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.on_lava byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/on_lava) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{on_lava:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.on_lava set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{on_lava:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.on_lava set value "§c✔"

## In Lava
execute unless score (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.in_lava byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{in_lava:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.in_lava set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{in_lava:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.in_lava set value "§c✔"

## On Lava and In Lava sub-configs cannot be both true
execute if score (graves/grave_placement_restrictions_restrictions/on_lava) sgrave2.config matches 1 if score (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config matches 1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config 0

## On Non-Solid Blocks
execute unless score (graves/grave_placement_restrictions_restrictions/on_non_solid_blocks) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_non_solid_blocks) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.on_non_solid_blocks byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/on_non_solid_blocks) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{on_non_solid_blocks:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.on_non_solid_blocks set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{on_non_solid_blocks:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.on_non_solid_blocks set value "§c✔"

## In Solid Blocks
execute unless score (graves/grave_placement_restrictions_restrictions/in_solid_blocks) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/in_solid_blocks) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.in_solid_blocks byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/in_solid_blocks) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{in_solid_blocks:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.in_solid_blocks set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{in_solid_blocks:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.in_solid_blocks set value "§c✔"

## On Air
execute unless score (graves/grave_placement_restrictions_restrictions/on_air) sgrave2.config matches 0..1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_air) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.grave_placement_restrictions.on_air byte 1 run scoreboard players get (graves/grave_placement_restrictions_restrictions/on_air) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{on_air:0b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.on_air set value "§a❌"
execute if data storage sgrave2:common configs.value.graves.grave_placement_restrictions{on_air:1b} run data modify storage sgrave2:common configs.text.graves.grave_placement_restrictions.on_air set value "§c✔"