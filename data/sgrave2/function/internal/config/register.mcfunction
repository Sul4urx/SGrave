#<< loop/1t

# Register configs

## Grave Despawn Time
execute unless score <despawn_time.grave> sgrave2.config matches 0.. run scoreboard players set <despawn_time.grave> sgrave2.config 5400

execute store result storage sgrave2:common configs.despawn_time.grave.value int 1 run scoreboard players get <despawn_time.grave> sgrave2.config

data modify storage sgrave2:common configs.despawn_time.grave.text_value set string storage sgrave2:common configs.despawn_time.grave.value

## Item Despawn Time
execute unless score <despawn_time.item> sgrave2.config matches 0.. run scoreboard players set <despawn_time.item> sgrave2.config 2700

execute store result storage sgrave2:common configs.despawn_time.item.value int 1 run scoreboard players get <despawn_time.item> sgrave2.config

data modify storage sgrave2:common configs.despawn_time.item.text_value set string storage sgrave2:common configs.despawn_time.item.value

## XP Despawn Time
execute unless score <despawn_time.xp> sgrave2.config matches 0.. run scoreboard players set <despawn_time.xp> sgrave2.config 1200

execute store result storage sgrave2:common configs.despawn_time.xp.value int 1 run scoreboard players get <despawn_time.xp> sgrave2.config

data modify storage sgrave2:common configs.despawn_time.xp.text_value set string storage sgrave2:common configs.despawn_time.xp.value


## Glowing Graves
execute unless score <glowing_graves> sgrave2.config matches 0..1 run scoreboard players set <glowing_graves> sgrave2.config 1

execute store result storage sgrave2:common configs.glowing_graves.value byte 1 run scoreboard players get <glowing_graves> sgrave2.config

data modify storage sgrave2:common configs.glowing_graves{value:0b}.text_value set value "§c❌"
data modify storage sgrave2:common configs.glowing_graves{value:1b}.text_value set value "§a✔"

## Tell Grave Mini Info
execute unless score <tell_grave_mini_info> sgrave2.config matches 0..2 run scoreboard players set <tell_grave_mini_info> sgrave2.config 1

execute store result storage sgrave2:common configs.tell_grave_mini_info.value byte 1 run scoreboard players get <tell_grave_mini_info> sgrave2.config

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