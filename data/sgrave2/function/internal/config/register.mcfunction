#<< loop/1t

# Register configs

## Grave Despawn Time
execute unless score (graves/despawn_time) sgrave2.config matches 0.. run scoreboard players set (graves/despawn_time) sgrave2.config 5400

execute store result storage sgrave2:common configs.graves.despawn_time.value int 1 run scoreboard players get (graves/despawn_time) sgrave2.config

data modify storage sgrave2:common configs.graves.despawn_time.text_value set string storage sgrave2:common configs.graves.despawn_time.value

## Item Despawn Time
execute unless score (dropped_contents/item_despawn_time) sgrave2.config matches 0.. run scoreboard players set (dropped_contents/item_despawn_time) sgrave2.config 2700

execute store result storage sgrave2:common configs.dropped_contents.item.despawn_time.value int 1 run scoreboard players get (dropped_contents/item_despawn_time) sgrave2.config

data modify storage sgrave2:common configs.dropped_contents.item.despawn_time.text_value set string storage sgrave2:common configs.dropped_contents.item.despawn_time.value

## XP Despawn Time
execute unless score (dropped_contents/xp_despawn_time) sgrave2.config matches 0.. run scoreboard players set (dropped_contents/xp_despawn_time) sgrave2.config 1200

execute store result storage sgrave2:common configs.dropped_contents.xp.despawn_time.value int 1 run scoreboard players get (dropped_contents/xp_despawn_time) sgrave2.config

data modify storage sgrave2:common configs.dropped_contents.xp.despawn_time.text_value set string storage sgrave2:common configs.dropped_contents.xp.despawn_time.value

## Mod Compatibility Mode / Item Collection Distance
execute unless score (general/mod_compatibility_mode/item_collection_distance) sgrave2.config matches 0..16 run scoreboard players set (general/mod_compatibility_mode/item_collection_distance) sgrave2.config 4

execute store result storage sgrave2:common configs.general.mod_compatibility_mode.item_collection_distance.value int 1 run scoreboard players get (general/mod_compatibility_mode/item_collection_distance) sgrave2.config

data modify storage sgrave2:common configs.general.mod_compatibility_mode.item_collection_distance.text_value set string storage sgrave2:common configs.general.mod_compatibility_mode.item_collection_distance.value



## Change Game Rules
execute unless score (general/change_gamerules) sgrave2.config matches 0..1 run scoreboard players set (general/change_gamerules) sgrave2.config 1

execute store result storage sgrave2:common configs.general.change_gamerules.value byte 1 run scoreboard players get (general/change_gamerules) sgrave2.config

data modify storage sgrave2:common configs.general.change_gamerules{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.general.change_gamerules{value:1b}.text_value set value "§a✔"

## Glowing Graves
execute unless score (graves/glowing_graves) sgrave2.config matches 0..1 run scoreboard players set (graves/glowing_graves) sgrave2.config 1

execute store result storage sgrave2:common configs.graves.glowing_graves.value byte 1 run scoreboard players get (graves/glowing_graves) sgrave2.config

data modify storage sgrave2:common configs.graves.glowing_graves{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.graves.glowing_graves{value:1b}.text_value set value "§a✔"

## Mod Compatibility Mode
execute unless score (general/mod_compatibility_mode) sgrave2.config matches 0..1 run scoreboard players set (general/mod_compatibility_mode) sgrave2.config 0

execute store result storage sgrave2:common configs.general.mod_compatibility_mode.value byte 1 run scoreboard players get (general/mod_compatibility_mode) sgrave2.config

data modify storage sgrave2:common configs.general.mod_compatibility_mode{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.general.mod_compatibility_mode{value:1b}.text_value set value "§a✔"

## Tell Grave Mini Info
execute unless score (graves/tell_grave_mini_info) sgrave2.config matches 0..2 run scoreboard players set (graves/tell_grave_mini_info) sgrave2.config 1

execute store result storage sgrave2:common configs.graves.tell_grave_mini_info.value byte 1 run scoreboard players get (graves/tell_grave_mini_info) sgrave2.config

data modify storage sgrave2:common configs.graves.tell_grave_mini_info{value:0b}.text_value set value "§cN"
data modify storage sgrave2:common configs.graves.tell_grave_mini_info{value:1b}.text_value set value "§eO"
data modify storage sgrave2:common configs.graves.tell_grave_mini_info{value:2b}.text_value set value "§aE"


## Blacklist Items
execute unless data storage sgrave2:common configs.players.blacklist_items[] run data modify storage sgrave2:common configs.players.blacklist_items set value [{predicates: {"minecraft:enchantments": [{enchantments: "minecraft:vanishing_curse"}]}, operation: "delete"}]

## Blacklist Slots
execute unless data storage sgrave2:common configs.players.blacklist_slots[] run data modify storage sgrave2:common configs.players.blacklist_slots set value []


## Sub-configs

function sgrave2:internal/config/register/grave_opening_costs
function sgrave2:internal/config/register/grave_ropening_costs
function sgrave2:internal/config/register/grave_generation_costs
function sgrave2:internal/config/register/grave_placement_restrictions
function sgrave2:internal/config/register/show_grave_info
function sgrave2:internal/config/register/icd