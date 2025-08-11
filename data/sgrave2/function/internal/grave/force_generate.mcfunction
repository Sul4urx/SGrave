#<! force_generate_grave

## Tag the player as the owner of the grave
tag @s add sgrave2.temp.grave.owner

## This item display is the base of the grave
## It holds all of the grave data
execute align xyz run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["sgrave2.grave.base","sgrave2.temp.grave.base"],item:{id:"minecraft:light_blue_dye",components:{"minecraft:custom_data":{"sgrave2:common":{}}}},view_range:0}

## Set despawn time
scoreboard players operation @n[tag=sgrave2.temp.grave.base] sgrave2.despawn_time = (config:graves/despawn_time) sgrave2.config
execute as @n[tag=sgrave2.temp.grave.base] at @s store result entity @s item.components.minecraft:custom_data.sgrave2:common.despawn_time int 1 run scoreboard players get @s sgrave2.despawn_time

## Set XP for before death
execute store result entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.before_death.levels int 1 run xp query @s levels
execute store result entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.before_death.points int 1 run xp query @s points

## This item display is the player head part of the grave
summon minecraft:item_display ~ ~ ~ {Tags: ["sgrave2.grave.player_head", "sgrave2.temp.grave.player_head"], item: {id: "minecraft:player_head"}, Glowing:1b, transformation: {left_rotation: [0f,0f,0f,1f], right_rotation: [0f,0f,0f,1f], scale: [1f,1f,1f], translation: [0f,0.75f,0f]}, shadow_radius: 0.5, shadow_strength: 0.75, teleport_duration: 20}

item modify entity @n[tag=sgrave2.temp.grave.player_head] contents {function:"minecraft:fill_player_head",entity:"this"}

## If Glowing Graves config is false, set the grave to not glow
execute if score (config:graves/glowing_graves) sgrave2.config matches 0 run data modify entity @n[tag=sgrave2.temp.grave.player_head] Glowing set value 0b

## Copy items from player to grave
function sgrave2:internal/grave/generate/copy_items

## Take XP from player
function sgrave2:internal/grave/generate/take_xp/main

## Clear player's inventory
function sgrave2:internal/grave/generate/clear_player_inv

## Store creation time data
execute as @n[tag=sgrave2.temp.grave.base] at @s run function sgrave2:internal/grave/generate/get_creation_time

## Add the final elements: interaction and text display
summon minecraft:interaction ~ ~ ~ {Tags:["sgrave2.grave.interaction","sgrave2.temp.grave.interaction"],width:0.5,height:0.5}
summon minecraft:text_display ~ ~ ~ {billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,1f,0f]},alignment:"center",Tags:["sgrave2.grave.text_display","sgrave2.temp.grave.text_display"],shadow:1b}

## Attach all grave parts to the base grave
ride @n[tag=sgrave2.temp.grave.player_head] mount @n[tag=sgrave2.temp.grave.base]
ride @n[tag=sgrave2.temp.grave.interaction] mount @n[tag=sgrave2.temp.grave.base]
ride @n[tag=sgrave2.temp.grave.text_display] mount @n[tag=sgrave2.temp.grave.base]

## Grave placement restrictions
function sgrave2:internal/grave/generate/grave_placement_restrictions with entity @s

## Store other data
execute as @n[tag=sgrave2.temp.grave.base] at @s run function sgrave2:internal/map/graves/insert
function sgrave2:internal/map/players/lookup with entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.owner

##> Store player and grave IDs
execute store result entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.owner.pid int 1 run scoreboard players get @s sgrave2.pid
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.gid set from storage sgrave2:common graves[-1].data.id

##> Add grave data to player/grave map
data modify storage sgrave2:common players[-1].graves append from storage sgrave2:common graves[-1]

##> Store owner
data modify storage sgrave2:common graves[-1].data.owner set from storage sgrave2:common players[-1].player
data modify entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.owner set from storage sgrave2:common players[-1].player

## Update last_gid variable
scoreboard players operation (last_gid) sgrave2.var = @n[tag=sgrave2.temp.grave.base] sgrave2.gid

## Tell grave mini-info
execute if score (config:graves/tell_grave_mini_info) sgrave2.config matches 1..2 run function sgrave2:internal/grave/generate/tell_grave_mini_info/self
execute if score (config:graves/tell_grave_mini_info) sgrave2.config matches 2 run function sgrave2:internal/grave/generate/tell_grave_mini_info/others

## Remove temp tags
tag @e[tag=sgrave2.temp.grave.base] remove sgrave2.temp.grave.base
tag @e[tag=sgrave2.temp.grave.interaction] remove sgrave2.temp.grave.interaction
tag @e[tag=sgrave2.temp.grave.player_head] remove sgrave2.temp.grave.player_head
tag @e[tag=sgrave2.temp.grave.owner] remove sgrave2.temp.grave.owner