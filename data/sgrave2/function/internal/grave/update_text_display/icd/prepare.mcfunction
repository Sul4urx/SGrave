#<< grave/main

# Prepare to show item info

## Select item
data modify storage sgrave2:common temp.item set from entity @s item.components.minecraft:custom_data.sgrave2:common.items[0]

## Prepare slot
execute if data storage sgrave2:common temp.item{Slot:0b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_0", "fallback": "§aHotbar 1"}'
execute if data storage sgrave2:common temp.item{Slot:1b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_1", "fallback": "§aHotbar 2"}'
execute if data storage sgrave2:common temp.item{Slot:2b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_2", "fallback": "§aHotbar 3"}'
execute if data storage sgrave2:common temp.item{Slot:3b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_3", "fallback": "§aHotbar 4"}'
execute if data storage sgrave2:common temp.item{Slot:4b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_4", "fallback": "§aHotbar 5"}'
execute if data storage sgrave2:common temp.item{Slot:5b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_5", "fallback": "§aHotbar 6"}'
execute if data storage sgrave2:common temp.item{Slot:6b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_6", "fallback": "§aHotbar 7"}'
execute if data storage sgrave2:common temp.item{Slot:7b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_7", "fallback": "§aHotbar 8"}'
execute if data storage sgrave2:common temp.item{Slot:8b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.hotbar_8", "fallback": "§aHotbar 9"}'

execute if data storage sgrave2:common temp.item{Slot:9b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_0", "fallback": "§aInventory 1"}'
execute if data storage sgrave2:common temp.item{Slot:10b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_1", "fallback": "§aInventory 2"}'
execute if data storage sgrave2:common temp.item{Slot:11b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_2", "fallback": "§aInventory 3"}'
execute if data storage sgrave2:common temp.item{Slot:12b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_3", "fallback": "§aInventory 4"}'
execute if data storage sgrave2:common temp.item{Slot:13b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_4", "fallback": "§aInventory 5"}'
execute if data storage sgrave2:common temp.item{Slot:14b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_5", "fallback": "§aInventory 6"}'
execute if data storage sgrave2:common temp.item{Slot:15b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_6", "fallback": "§aInventory 7"}'
execute if data storage sgrave2:common temp.item{Slot:16b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_7", "fallback": "§aInventory 8"}'
execute if data storage sgrave2:common temp.item{Slot:17b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_8", "fallback": "§aInventory 9"}'
execute if data storage sgrave2:common temp.item{Slot:9b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_0", "fallback": "§aInventory 1"}'
execute if data storage sgrave2:common temp.item{Slot:10b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_1", "fallback": "§aInventory 2"}'
execute if data storage sgrave2:common temp.item{Slot:11b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_2", "fallback": "§aInventory 3"}'
execute if data storage sgrave2:common temp.item{Slot:12b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_3", "fallback": "§aInventory 4"}'
execute if data storage sgrave2:common temp.item{Slot:13b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_4", "fallback": "§aInventory 5"}'
execute if data storage sgrave2:common temp.item{Slot:14b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_5", "fallback": "§aInventory 6"}'
execute if data storage sgrave2:common temp.item{Slot:15b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_6", "fallback": "§aInventory 7"}'
execute if data storage sgrave2:common temp.item{Slot:16b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_7", "fallback": "§aInventory 8"}'
execute if data storage sgrave2:common temp.item{Slot:17b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_8", "fallback": "§aInventory 9"}'
execute if data storage sgrave2:common temp.item{Slot:18b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_9", "fallback": "§aInventory 10"}'
execute if data storage sgrave2:common temp.item{Slot:19b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_10", "fallback": "§aInventory 11"}'
execute if data storage sgrave2:common temp.item{Slot:20b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_11", "fallback": "§aInventory 12"}'
execute if data storage sgrave2:common temp.item{Slot:21b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_12", "fallback": "§aInventory 13"}'
execute if data storage sgrave2:common temp.item{Slot:22b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_13", "fallback": "§aInventory 14"}'
execute if data storage sgrave2:common temp.item{Slot:23b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_14", "fallback": "§aInventory 15"}'
execute if data storage sgrave2:common temp.item{Slot:24b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_15", "fallback": "§aInventory 16"}'
execute if data storage sgrave2:common temp.item{Slot:25b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_16", "fallback": "§aInventory 17"}'
execute if data storage sgrave2:common temp.item{Slot:26b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_17", "fallback": "§aInventory 18"}'
execute if data storage sgrave2:common temp.item{Slot:27b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_18", "fallback": "§aInventory 19"}'
execute if data storage sgrave2:common temp.item{Slot:28b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_19", "fallback": "§aInventory 20"}'
execute if data storage sgrave2:common temp.item{Slot:29b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_20", "fallback": "§aInventory 21"}'
execute if data storage sgrave2:common temp.item{Slot:30b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_21", "fallback": "§aInventory 22"}'
execute if data storage sgrave2:common temp.item{Slot:31b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_22", "fallback": "§aInventory 23"}'
execute if data storage sgrave2:common temp.item{Slot:32b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_23", "fallback": "§aInventory 24"}'
execute if data storage sgrave2:common temp.item{Slot:33b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_24", "fallback": "§aInventory 25"}'
execute if data storage sgrave2:common temp.item{Slot:34b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_25", "fallback": "§aInventory 26"}'
execute if data storage sgrave2:common temp.item{Slot:35b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.inventory_26", "fallback": "§aInventory 27"}'

execute if data storage sgrave2:common temp.item{Slot:-106b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.offhand", "fallback": "§aOffhand"}'

execute if data storage sgrave2:common temp.item{Slot:103b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.armor_head", "fallback": "§aArmor - Head"}'
execute if data storage sgrave2:common temp.item{Slot:102b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.armor_chest", "fallback": "§aArmor - Chest"}'
execute if data storage sgrave2:common temp.item{Slot:101b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.armor_legs", "fallback": "§aArmor - Legs"}'
execute if data storage sgrave2:common temp.item{Slot:100b} run data modify storage sgrave2:common temp.item.slot_name set value '{"translate": "sgrave2.icd.slot.armor_feet", "fallback": "§aArmor - Boots"}'

execute unless data storage sgrave2:common temp.item.Slot run data modify storage sgrave2:common temp.item.slot_name set value ''

## Update current text display
function sgrave2:internal/grave/update_text_display/icd/update with storage sgrave2:common temp.item