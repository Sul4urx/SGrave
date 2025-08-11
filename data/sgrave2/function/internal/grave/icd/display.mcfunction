#<< grave/icd/check_conditions

## Set data
data modify entity @s item.components.minecraft:custom_data.sgrave2:common.icd_activated set value 1b

## Show ICD
## If first tick of using this feature,
## Summon a new one and mount it to the grave
scoreboard players set .icd_exists sgrave2.temp_var 0
execute on passengers if entity @s[tag=sgrave2.grave.icd] run scoreboard players set .icd_exists sgrave2.temp_var 1

execute unless score .icd_exists sgrave2.temp_var matches 1 run summon minecraft:item_display ~ ~ ~ {Tags:["sgrave2.grave.icd", "sgrave2.temp.grave.icd"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [0.75f, 0.75f, 0.75f], translation: [0f, 0.5f, 0f]}, teleport_duration: 20, item_display: fixed}

execute if score .icd_exists sgrave2.temp_var matches 1 on passengers if entity @s[tag=sgrave2.grave.icd] run tag @s add sgrave2.temp.grave.icd

ride @n[tag=sgrave2.temp.grave.icd] mount @s

## If this line of code didn't exist,
## there would be a delay before the
## ICD starts rotating
execute unless score .icd_exists sgrave2.temp_var matches 1 as @n[tag=sgrave2.temp.grave.icd] at @s run function sgrave2:internal/grave/rotate

## Render item
data modify entity @n[tag=sgrave2.temp.grave.icd] item set from entity @s item.components.minecraft:custom_data.sgrave2:common.items[0]

## If grave has no items, deactivate the feature
execute unless data entity @s item.components.minecraft:custom_data.sgrave2:common.items[0] run return run function sgrave2:internal/grave/icd/cancel

## Item cycle cooldown
scoreboard players add @n[tag=sgrave2.temp.grave.icd] sgrave2.icd.cooldown 1
execute if score @n[tag=sgrave2.temp.grave.icd] sgrave2.icd.cooldown >= (graves/icd/item_cycle_cooldown) sgrave2.config run function sgrave2:internal/grave/icd/cycle_items

## Remove temp tag
tag @s remove sgrave2.temp.grave.icd