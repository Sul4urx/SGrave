#<< grave/generate/take_items

# Loop through all items stored in the grave
# and if any have been blacklisted in the config,
# remove the item from grave so that it doesn't get taken

## Manipulate current item
data modify storage sgrave2:common temp.item set from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]
data remove storage sgrave2:common temp.item.Slot
data modify entity @s Item set from storage sgrave2:common temp.item

## Perform actions on a copy of the blacklist items config value just in case
execute store result score .loop_count_2 sgrave2.temp_var if data storage sgrave2:common configs.players.blacklist_items[]
data modify storage sgrave2:common temp.config.blacklist_items_copy set from storage sgrave2:common configs.players.blacklist_items
data modify storage sgrave2:common temp.args.value set from storage sgrave2:common temp.config.blacklist_items_copy[-1]

## Check if item is blacklisted
scoreboard players set .item_is_blacklisted sgrave2.temp_var 0

function sgrave2:internal/grave/generate/give_back_blacklisted_items/check_for_blacklist with storage sgrave2:common temp.args

## .item_is_blacklisted = 2 ⭢ Delete item
## .item_is_blacklisted = 1 ⭢ Keep item in player's inventory
## .item_is_blacklisted = 0 ⭢ Take item from player's inventory
execute if score .item_is_blacklisted sgrave2.temp_var matches 2 run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1].components.minecraft:custom_data.sgrave2:common.delete_item set value 1b

execute unless score .item_is_blacklisted sgrave2.temp_var matches 1 run data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items prepend from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]

data remove entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[-1]

## Remove 1 from iterator count
## If the iterator count is not 0,
## Check if next item is blacklisted
scoreboard players remove .loop_count sgrave2.temp_var 1
execute if score .loop_count sgrave2.temp_var matches 1.. if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/give_back_blacklisted_items with storage sgrave2:common configs
