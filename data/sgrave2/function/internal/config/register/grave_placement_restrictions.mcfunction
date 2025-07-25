#<< config/register

# Register sub-configs for Grave Placement Restrictions config

## Above Build Height Limit
execute unless score <grave_placement_restrictions.above_build_height_limit> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.above_build_height_limit> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_placement_restrictions.above_build_height_limit.value byte 1 run scoreboard players get <grave_placement_restrictions.above_build_height_limit> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.above_build_height_limit{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.above_build_height_limit{value:1b}.text_value set value "§c✔"

## Below Build Height Limit
execute unless score <grave_placement_restrictions.below_build_height_limit> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.below_build_height_limit> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_placement_restrictions.below_build_height_limit.value byte 1 run scoreboard players get <grave_placement_restrictions.below_build_height_limit> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.below_build_height_limit{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.below_build_height_limit{value:1b}.text_value set value "§c✔"

## On Water
execute unless score <grave_placement_restrictions.on_water> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.on_water> sgrave2.config 0

execute store result storage sgrave2:common configs.grave_placement_restrictions.on_water.value byte 1 run scoreboard players get <grave_placement_restrictions.on_water> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.on_water{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.on_water{value:1b}.text_value set value "§c✔"

## In Water
execute unless score <grave_placement_restrictions.in_water> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.in_water> sgrave2.config 0

execute store result storage sgrave2:common configs.grave_placement_restrictions.in_water.value byte 1 run scoreboard players get <grave_placement_restrictions.in_water> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.in_water{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.in_water{value:1b}.text_value set value "§c✔"

## In Water and On Water sub-configs cannot be both true
execute if score <grave_placement_restrictions.on_water> sgrave2.config matches 1 if score <grave_placement_restrictions.in_water> sgrave2.config matches 1 run scoreboard players set <grave_placement_restrictions.on_water> sgrave2.config 0

## On Lava
execute unless score <grave_placement_restrictions.on_lava> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.on_lava> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_placement_restrictions.on_lava.value byte 1 run scoreboard players get <grave_placement_restrictions.on_lava> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.on_lava{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.on_lava{value:1b}.text_value set value "§c✔"

## In Lava
execute unless score <grave_placement_restrictions.in_lava> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.in_lava> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_placement_restrictions.in_lava.value byte 1 run scoreboard players get <grave_placement_restrictions.in_lava> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.in_lava{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.in_lava{value:1b}.text_value set value "§c✔"

## On Lava and In Lava sub-configs cannot be both true
execute if score <grave_placement_restrictions.on_lava> sgrave2.config matches 1 if score <grave_placement_restrictions.in_lava> sgrave2.config matches 1 run scoreboard players set <grave_placement_restrictions.in_lava> sgrave2.config 0

## On Non-Solid Blocks
execute unless score <grave_placement_restrictions.on_non_solid_blocks> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.on_non_solid_blocks> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_placement_restrictions.on_non_solid_blocks.value byte 1 run scoreboard players get <grave_placement_restrictions.on_non_solid_blocks> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.on_non_solid_blocks{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.on_non_solid_blocks{value:1b}.text_value set value "§c✔"

## In Solid Blocks
execute unless score <grave_placement_restrictions.in_solid_blocks> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.in_solid_blocks> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_placement_restrictions.in_solid_blocks.value byte 1 run scoreboard players get <grave_placement_restrictions.in_solid_blocks> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.in_solid_blocks{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.in_solid_blocks{value:1b}.text_value set value "§c✔"

## On Air
execute unless score <grave_placement_restrictions.on_air> sgrave2.config matches 0..1 run scoreboard players set <grave_placement_restrictions.on_air> sgrave2.config 1

execute store result storage sgrave2:common configs.grave_placement_restrictions.on_air.value byte 1 run scoreboard players get <grave_placement_restrictions.on_air> sgrave2.config

data modify storage sgrave2:common configs.grave_placement_restrictions.on_air{value:0b}.text_value set value "§a❌"
data modify storage sgrave2:common configs.grave_placement_restrictions.on_air{value:1b}.text_value set value "§c✔"