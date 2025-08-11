#<< grave/break

## Spawn item
summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:clock", components: {"minecraft:custom_data": {"sgrave2:common": {temp_item: 1b}}}}, Tags: ["sgrave2.temp.grave.item_to_give_back","sgrave2.grave.item"],Age:-32768s}

## Set item
data modify entity @n[tag=sgrave2.temp.grave.item_to_give_back] Item set from entity @s item.components.minecraft:custom_data.sgrave2:common.items[0]

## Remove item from grave
data remove entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0]

## If failed to set item, get rid of the item
kill @e[nbt={Item: {components: {"minecraft:custom_data": {"sgrave2:common": {temp_item: 1b}}}}}]

## Set despawn time
scoreboard players operation @n[tag=sgrave2.temp.grave.item_to_give_back] sgrave2.despawn_time = (config:dropped_contents/item_despawn_time) sgrave2.config

## Immediately switch to the next item
scoreboard players set @n[tag=sgrave2.temp.grave.icd] sgrave2.icd.cooldown 0

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1