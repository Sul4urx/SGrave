#<< config/register

# Register sub-configs for ICD config

## Activate For
execute unless score (config:graves/icd/activate_for) sgrave2.config matches 0..2 run scoreboard players set (config:graves/icd/activate_for) sgrave2.config 1

execute store result storage sgrave2:common configs.icd.activate_for.value byte 1 run scoreboard players get (config:graves/icd/activate_for) sgrave2.config

data modify storage sgrave2:common configs.icd.activate_for{value:0b}.text_value set value "§cN"
data modify storage sgrave2:common configs.icd.activate_for{value:1b}.text_value set value "§eO"
data modify storage sgrave2:common configs.icd.activate_for{value:2b}.text_value set value "§aE"

## Switch Text Display
execute unless score (config:graves/icd/switch_text_display) sgrave2.config matches 0..1 run scoreboard players set (config:graves/icd/switch_text_display) sgrave2.config 1

execute store result storage sgrave2:common configs.icd.switch_text_display.value byte 1 run scoreboard players get (config:graves/icd/switch_text_display) sgrave2.config

data modify storage sgrave2:common configs.icd.switch_text_display{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.icd.switch_text_display{value:1b}.text_value set value "§a✔"

execute unless score (config:graves/icd/switch_text_display) sgrave2.config matches 0..1 run scoreboard players set (config:graves/icd/switch_text_display) sgrave2.config 1

## Item Cycle Cooldown
execute unless score (config:graves/icd/item_cycle_cooldown) sgrave2.config matches 0..160 run scoreboard players set (config:graves/icd/item_cycle_cooldown) sgrave2.config 20

execute store result storage sgrave2:common configs.icd.item_cycle_cooldown.value int 1 run scoreboard players get (config:graves/icd/item_cycle_cooldown) sgrave2.config

data modify storage sgrave2:common configs.icd.item_cycle_cooldown.text_value set string storage sgrave2:common configs.icd.item_cycle_cooldown.value

## Requires Sneaking
execute unless score (config:graves/icd/requires_sneaking) sgrave2.config matches 0..1 run scoreboard players set (config:graves/icd/requires_sneaking) sgrave2.config 1

execute store result storage sgrave2:common configs.icd.requires_sneaking.value byte 1 run scoreboard players get (config:graves/icd/requires_sneaking) sgrave2.config

data modify storage sgrave2:common configs.icd.requires_sneaking{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.icd.requires_sneaking{value:1b}.text_value set value "§a✔"