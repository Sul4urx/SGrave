#<< grave/open/give_items/main

## Store the slot of the item in a score
execute store result score .slot sgrave2.temp_var run data get entity @s item.components.minecraft:custom_data.sgrave2:common.items[-1].Slot 1

## Remove the slot data temporarily so that manipulator item can do its job 
data remove entity @s item.components.minecraft:custom_data.sgrave2:common.items[-1].Slot

## Make manipulator item manipulate the item
data merge entity @n[tag=sgrave2.temp.item_manipulator] {Item:{}}
data modify entity @n[tag=sgrave2.temp.item_manipulator] Item set from entity @s item.components.minecraft:custom_data.sgrave2:common.items[-1]

## Add the slot data back
execute store result entity @s item.components.minecraft:custom_data.sgrave2:common.items[-1].Slot int 1 run scoreboard players get .slot sgrave2.temp_var

## Put item in correct slot of player's inventory
function sgrave2:internal/grave/open/give_items/put_item_in_correct_slot/main with entity @s item.components.minecraft:custom_data.sgrave2:common.items[-1]

## If the slot in player's inventory is full,
## queue the item to be summoned as entity instead
execute if score .slot_is_full sgrave2.temp_var matches 1 run data modify storage sgrave2:common temp.items_to_summon_as_entity append from entity @s item.components.minecraft:custom_data.sgrave2:common.items[-1]

## Set .slot_is_full to false, so that it doesn't somehow 
## remain true for the next iteration and break stuff
scoreboard players set .slot_is_full sgrave2.temp_var 0

## Remove the item from the grave
data remove entity @s item.components.minecraft:custom_data.sgrave2:common.items[-1]

## Do all of the above for the next item of the grave
scoreboard players remove .loop_count sgrave2.temp_var 1
execute if score .loop_count sgrave2.temp_var matches 1.. run function sgrave2:internal/grave/open/give_items/loop