#<< loop/1t

# Register configs

## Grave Despawn Time
execute unless score (config:graves/despawn_time) sgrave2.config matches 0.. run scoreboard players set (config:graves/despawn_time) sgrave2.config 5400

execute store result storage sgrave2:common configs.despawn_time.grave.value int 1 run scoreboard players get (config:graves/despawn_time) sgrave2.config

data modify storage sgrave2:common configs.despawn_time.grave.text_value set string storage sgrave2:common configs.despawn_time.grave.value

## Item Despawn Time
execute unless score (config:dropped_contents/item_despawn_time) sgrave2.config matches 0.. run scoreboard players set (config:dropped_contents/item_despawn_time) sgrave2.config 2700

execute store result storage sgrave2:common configs.despawn_time.item.value int 1 run scoreboard players get (config:dropped_contents/item_despawn_time) sgrave2.config

data modify storage sgrave2:common configs.despawn_time.item.text_value set string storage sgrave2:common configs.despawn_time.item.value

## XP Despawn Time
execute unless score (config:dropped_contents/xp_despawn_time) sgrave2.config matches 0.. run scoreboard players set (config:dropped_contents/xp_despawn_time) sgrave2.config 1200

execute store result storage sgrave2:common configs.despawn_time.xp.value int 1 run scoreboard players get (config:dropped_contents/xp_despawn_time) sgrave2.config

data modify storage sgrave2:common configs.despawn_time.xp.text_value set string storage sgrave2:common configs.despawn_time.xp.value

## Mod Compatibility Mode / Item Collection Distance
execute unless score (config:general/mod_compatibility_mode/item_collection_distance) sgrave2.config matches 0..16 run scoreboard players set (config:general/mod_compatibility_mode/item_collection_distance) sgrave2.config 4

execute store result storage sgrave2:common configs.mod_compatibility_mode.item_collection_distance.value int 1 run scoreboard players get (config:general/mod_compatibility_mode/item_collection_distance) sgrave2.config

data modify storage sgrave2:common configs.mod_compatibility_mode.item_collection_distance.text_value set string storage sgrave2:common configs.mod_compatibility_mode.item_collection_distance.value



## Change Game Rules
execute unless score (config:general/change_gamerules) sgrave2.config matches 0..1 run scoreboard players set (config:general/change_gamerules) sgrave2.config 1

execute store result storage sgrave2:common configs.change_gamerules.value byte 1 run scoreboard players get (config:general/change_gamerules) sgrave2.config

data modify storage sgrave2:common configs.change_gamerules{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.change_gamerules{value:1b}.text_value set value "§a✔"

## Glowing Graves
execute unless score (config:graves/glowing_graves) sgrave2.config matches 0..1 run scoreboard players set (config:graves/glowing_graves) sgrave2.config 1

execute store result storage sgrave2:common configs.glowing_graves.value byte 1 run scoreboard players get (config:graves/glowing_graves) sgrave2.config

data modify storage sgrave2:common configs.glowing_graves{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.glowing_graves{value:1b}.text_value set value "§a✔"

## Mod Compatibility Mode
execute unless score (config:general/mod_compatibility_mode) sgrave2.config matches 0..1 run scoreboard players set (config:general/mod_compatibility_mode) sgrave2.config 0

execute store result storage sgrave2:common configs.mod_compatibility_mode.value byte 1 run scoreboard players get (config:general/mod_compatibility_mode) sgrave2.config

data modify storage sgrave2:common configs.mod_compatibility_mode{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.mod_compatibility_mode{value:1b}.text_value set value "§a✔"

## Tell Grave Mini Info
execute unless score (config:graves/tell_grave_mini_info) sgrave2.config matches 0..2 run scoreboard players set (config:graves/tell_grave_mini_info) sgrave2.config 1

execute store result storage sgrave2:common configs.tell_grave_mini_info.value byte 1 run scoreboard players get (config:graves/tell_grave_mini_info) sgrave2.config

data modify storage sgrave2:common configs.tell_grave_mini_info{value:0b}.text_value set value "§cN"
data modify storage sgrave2:common configs.tell_grave_mini_info{value:1b}.text_value set value "§eO"
data modify storage sgrave2:common configs.tell_grave_mini_info{value:2b}.text_value set value "§aE"


## Blacklist Items
execute unless data storage sgrave2:common configs.blacklist_items[] run data modify storage sgrave2:common configs.blacklist_items set value [{predicates: {"minecraft:enchantments": [{enchantments: "minecraft:vanishing_curse"}]}, operation: "delete"}]

## Blacklist Slots
execute unless data storage sgrave2:common configs.blacklist_slots[] run data modify storage sgrave2:common configs.blacklist_slots set value []


## Sub-configs

function sgrave2:internal/config/register/grave_opening_costs
function sgrave2:internal/config/register/grave_ropening_costs
function sgrave2:internal/config/register/grave_generation_costs
function sgrave2:internal/config/register/grave_placement_restrictions
function sgrave2:internal/config/register/show_grave_info
function sgrave2:internal/config/register/icd