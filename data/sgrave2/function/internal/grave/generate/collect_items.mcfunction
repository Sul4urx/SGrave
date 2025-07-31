#<< grave/generate

$execute unless entity @p[tag=sgrave2.temp.grave.owner,distance=..$(distance)] run return -1

## Add item to grave
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items append from entity @s Item

## Tag for later removal
tag @s[type=item] add sgrave2.temp.item_to_be_deleted