
$execute unless data storage sgrave2:common unobstructed_graves[{data:{id:$(id)}}] run return run title @s actionbar {\
  "translate": "sgrave2.ropen_grave.fail.grave_obstructed",\
  "fallback": "§cGrave §6#$(id)§c either does not exist or has been obstructed.",\
}

$function sgrave2:internal/map/graves/lookup {id:$(id)}

## Add temp tags
tag @s add sgrave2.temp.grave.interactor

## Give items
function sgrave2:internal/grave/ropen/give_items/main

## Give XP
function sgrave2:internal/grave/ropen/give_xp with storage sgrave2:common graves[-1].contents.xp.after_death

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1

## Update status
execute store result storage sgrave2:common temp.args1.pid int 1 run scoreboard players get @s sgrave2.pid
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args1

data modify storage sgrave2:common temp.args2.id set from storage sgrave2:common graves[-1].data.id
data modify storage sgrave2:common graves[-1].data.status set value {obstructed:1b,obstruction_type:"ropened"}
data modify storage sgrave2:common graves[-1].data.status.obstructor set from storage sgrave2:common players[-1].player

data modify storage sgrave2:common temp.args2.pid set from storage sgrave2:common graves[-1].data.owner.id

function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args2

function sgrave2:internal/map/players/graves/lookup with storage sgrave2:common temp.args2
data modify storage sgrave2:common players[-1].graves[-1].data.status set from storage sgrave2:common graves[-1].data.status

## Remove temp tag
tag @s remove sgrave2.temp.grave.interactor

## Remove temp forceload
execute if score .macro_result.forceload_add sgrave2.temp_var matches 1 unless score .macro_result.forceload_query sgrave2.temp_var matches 1 run function sgrave2:internal/macro/forceload_remove with storage sgrave2:common temp.args
