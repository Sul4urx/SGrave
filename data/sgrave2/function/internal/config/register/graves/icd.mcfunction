#<< config/register

# Register sub-configs for ICD config

## Activate For
execute unless score (graves/icd/activate_for) sgrave2.config matches 0..2 run scoreboard players set (graves/icd/activate_for) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.icd.activate_for byte 1 run scoreboard players get (graves/icd/activate_for) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.icd{activate_for:0b} run data modify storage sgrave2:common configs.text.graves.icd.activate_for set value "§cN"
execute if data storage sgrave2:common configs.value.graves.icd{activate_for:1b} run data modify storage sgrave2:common configs.text.graves.icd.activate_for set value "§eO"
execute if data storage sgrave2:common configs.value.graves.icd{activate_for:2b} run data modify storage sgrave2:common configs.text.graves.icd.activate_for set value "§aE"

## Switch Text Display
execute unless score (graves/icd/switch_text_display) sgrave2.config matches 0..1 run scoreboard players set (graves/icd/switch_text_display) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.icd.switch_text_display byte 1 run scoreboard players get (graves/icd/switch_text_display) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.icd{switch_text_display:0b} run data modify storage sgrave2:common configs.text.graves.icd.switch_text_display set value "§c❌"
execute if data storage sgrave2:common configs.value.graves.icd{switch_text_display:1b} run data modify storage sgrave2:common configs.text.graves.icd.switch_text_display set value "§a✔"

execute unless score (graves/icd/switch_text_display) sgrave2.config matches 0..1 run scoreboard players set (graves/icd/switch_text_display) sgrave2.config 1

## Item Cycle Cooldown
execute unless score (graves/icd/item_cycle_cooldown) sgrave2.config matches 0..160 run scoreboard players set (graves/icd/item_cycle_cooldown) sgrave2.config 20

execute store result storage sgrave2:common configs.value.graves.icd.item_cycle_cooldown int 1 run scoreboard players get (graves/icd/item_cycle_cooldown) sgrave2.config

data modify storage sgrave2:common configs.text.graves.icd.item_cycle_cooldown set string storage sgrave2:common configs.value.graves.icd.item_cycle_cooldown

## Requires Sneaking
execute unless score (graves/icd/requires_sneaking) sgrave2.config matches 0..1 run scoreboard players set (graves/icd/requires_sneaking) sgrave2.config 1

execute store result storage sgrave2:common configs.value.graves.icd.requires_sneaking byte 1 run scoreboard players get (graves/icd/requires_sneaking) sgrave2.config

execute if data storage sgrave2:common configs.value.graves.icd{requires_sneaking:0b} run data modify storage sgrave2:common configs.text.graves.icd.requires_sneaking set value "§c❌"
execute if data storage sgrave2:common configs.value.graves.icd{requires_sneaking:1b} run data modify storage sgrave2:common configs.text.graves.icd.requires_sneaking set value "§a✔"