#<< grave/generate/give_back_blacklisted_items/check_for_blacklist

## Remove temp data
data remove storage sgrave2:common temp.args

data modify storage sgrave2:common temp.value set from storage sgrave2:common temp.config.blacklist_items_copy[-1]

## Check if item passes provided predicate
## and if it does, mark the item as blacklisted and exit
$execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": $(value)\
    }\
  }\
} if data storage sgrave2:common temp.value{operation:'delete'} run scoreboard players set .item_is_blacklisted sgrave2.temp_var 2

$execute unless score .item_is_blacklisted sgrave2.temp_var matches 2 if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    slots: {\
      "container.*": $(value)\
    }\
  }\
} unless data storage sgrave2:common temp.value{operation:'delete'} run scoreboard players set .item_is_blacklisted sgrave2.temp_var 1

## Iterate to next predicate
data modify storage sgrave2:common temp.config.blacklist_items_copy append from storage sgrave2:common temp.config.blacklist_items_copy[0]
data remove storage sgrave2:common temp.config.blacklist_items_copy[0]

## If none of the predicates passed,
## Mark the item as not blacklisted and exit to prevent infinite recursion
scoreboard players remove .loop_count_2 sgrave2.temp_var 1
execute if score .loop_count_2 sgrave2.temp_var matches ..0 run return -1

## Check if item passes the next predicate
data modify storage sgrave2:common temp.args.value set from storage sgrave2:common temp.config.blacklist_items_copy[-1]

function sgrave2:internal/grave/generate/give_back_blacklisted_items/check_for_blacklist with storage sgrave2:common temp.args

## If the item has been marked as blacklisted, exit
# execute unless score .item_is_blacklisted sgrave2.temp_var matches 0 run return -1
