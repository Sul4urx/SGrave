#<< loop/1t

## Check if the grave exists in data `active_graves` in storage `sgrave2:common`
## If not, delete the grave
## This allows for deleting the grave entity remotely
scoreboard players set .grave_is_in_storage sgrave2.temp_var 0
execute store result score .grave_is_in_storage sgrave2.temp_var run function sgrave2:internal/grave/check_if_grave_data_in_storage with entity @s item.components.minecraft:custom_data.sgrave2:common

execute if score .grave_is_in_storage sgrave2.temp_var matches 0 run return run function sgrave2:internal/grave/delete

## Add temp tags
tag @s add sgrave2.temp.grave.base
execute on passengers at @s if entity @s[tag=sgrave2.grave.interaction] run tag @s add sgrave2.temp.grave.interaction
execute on passengers at @s if entity @s[tag=sgrave2.grave.player_head] run tag @s add sgrave2.temp.grave.player_head
execute on passengers at @s if entity @s[tag=sgrave2.grave.text_display] run tag @s add sgrave2.temp.grave.text_display
execute on passengers at @s if entity @s[tag=sgrave2.grave.icd] run tag @s add sgrave2.temp.grave.icd
execute as @n[tag=sgrave2.temp.grave.interaction] at @s on target at @s run tag @s add sgrave2.temp.grave.interactor
execute as @n[tag=sgrave2.temp.grave.interaction] at @s on attacker at @s run tag @s add sgrave2.temp.grave.interactor
function sgrave2:internal/grave/tag_owner with entity @s item.components.minecraft:custom_data.sgrave2:common.owner

## Rotate player head and item in ICD
scoreboard players add @n[tag=sgrave2.temp.grave.player_head] sgrave2.rotation_cooldown 1
scoreboard players add @n[tag=sgrave2.temp.grave.icd] sgrave2.rotation_cooldown 1
execute as @n[tag=sgrave2.grave.player_head] at @s if score @s sgrave2.rotation_cooldown matches 20.. run function sgrave2:internal/grave/rotate
execute as @n[tag=sgrave2.grave.icd] at @s if score @s sgrave2.rotation_cooldown matches 20.. run function sgrave2:internal/grave/rotate

## Update text display
execute if score (graves/icd/switch_text_display) sgrave2.config matches 0 run function sgrave2:internal/grave/update_text_display/prepare
execute unless score (graves/icd/switch_text_display) sgrave2.config matches 0 unless data entity @s item.components.minecraft:custom_data.sgrave2:common{icd_activated:1b} run function sgrave2:internal/grave/update_text_display/prepare
execute unless score (graves/icd/switch_text_display) sgrave2.config matches 0 if data entity @s item.components.minecraft:custom_data.sgrave2:common{icd_activated:1b} run function sgrave2:internal/grave/update_text_display/icd/prepare

## Tag the ICD (Item Cycle Display) activator
execute if score (graves/icd/activate_for) sgrave2.config matches 1 if score (graves/icd/requires_sneaking) sgrave2.config matches 0 run tag @a[distance=..4,tag=sgrave2.temp.grave.owner] add sgrave2.temp.grave.icd_activator
execute if score (graves/icd/activate_for) sgrave2.config matches 2 if score (graves/icd/requires_sneaking) sgrave2.config matches 0 run tag @a[distance=..4] add sgrave2.temp.grave.icd_activator

execute if score (graves/icd/activate_for) sgrave2.config matches 1 if score (graves/icd/requires_sneaking) sgrave2.config matches 1 run tag @a[distance=..4,predicate=sgrave2:is_sneaking,tag=sgrave2.temp.grave.owner] add sgrave2.temp.grave.icd_activator
execute if score (graves/icd/activate_for) sgrave2.config matches 2 if score (graves/icd/requires_sneaking) sgrave2.config matches 1 run tag @a[distance=..4,predicate=sgrave2:is_sneaking] add sgrave2.temp.grave.icd_activator

## ICD management
execute as @n[tag=sgrave2.temp.grave.icd_activator] at @s run function sgrave2:internal/grave/icd/check_conditions
execute unless entity @a[tag=sgrave2.temp.grave.icd_activator] run function sgrave2:internal/grave/icd/cancel
execute if data entity @s item.components.minecraft:custom_data.sgrave2:common{icd_activated:1b} run data modify entity @n[tag=sgrave2.temp.grave.player_head] view_range set value 0
execute unless data entity @s item.components.minecraft:custom_data.sgrave2:common{icd_activated:1b} run data modify entity @n[tag=sgrave2.temp.grave.player_head] view_range set value 1

## If player both interacted and attacked grave, prioritize interaction
execute as @n[tag=sgrave2.temp.grave.interaction] at @s if data entity @s interaction run data remove entity @s attack

## On player interaction with grave
execute if data entity @n[tag=sgrave2.temp.grave.interaction] interaction run function sgrave2:internal/event/player/player_interacted_with_grave

## On player attack on grave
execute if data entity @n[tag=sgrave2.temp.grave.interaction] attack run function sgrave2:internal/event/player/player_attacked_grave

## In case grave has not been destroyed after 
## being interacted or attacked by player,
## Remove interaction and attack tags to prevent loop
data remove entity @n[tag=sgrave2.grave.interaction] interaction
data remove entity @n[tag=sgrave2.grave.interaction] attack

## Remove temp tags
tag @e[tag=sgrave2.temp.grave.base] remove sgrave2.temp.grave.base
tag @e[tag=sgrave2.temp.grave.owner] remove sgrave2.temp.grave.owner
tag @e[tag=sgrave2.temp.grave.player_head] remove sgrave2.temp.grave.player_head
tag @e[tag=sgrave2.temp.grave.text_display] remove sgrave2.temp.grave.text_display
tag @e[tag=sgrave2.temp.grave.icd] remove sgrave2.temp.grave.icd
tag @e[tag=sgrave2.temp.grave.interaction] remove sgrave2.temp.grave.interaction
tag @e[tag=sgrave2.temp.grave.interactor] remove sgrave2.temp.grave.interactor
tag @e[tag=sgrave2.temp.grave.icd_activator] remove sgrave2.temp.grave.icd_activator
