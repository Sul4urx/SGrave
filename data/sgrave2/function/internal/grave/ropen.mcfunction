#<< event/player/player_tried_to_ropen_grave


$execute unless data storage sgrave2:common unobstructed_graves[{data:{id:$(id)}}] run return run title @s actionbar {\
  "translate": "sgrave2.ropen_grave.fail.grave_obstructed",\
  "fallback": "§cGrave §6#$(id)§c either does not exist or has been obstructed.",\
}

$function sgrave2:internal/map/graves/lookup {id:$(id)}

## Check and apply costs
function sgrave2:internal/grave/ropen/check_costs/owners
function sgrave2:internal/grave/ropen/check_costs/non_owners

execute unless score .check_costs.gamemodes sgrave2.temp_var matches 1 run return run title @s actionbar {\
  "translate": "sgrave2.grave.ropen.fail.cannot_afford_cost.gamemodes",\
  "fallback": "§cYou do not have the nessecary requirements to remotely open this grave."\
}
execute unless score .check_costs.items sgrave2.temp_var matches 1 run return run title @s actionbar {\
  "translate": "sgrave2.grave.ropen.fail.cannot_afford_cost.items",\
  "fallback": "§cYou do not have the nessecary requirements to remotely open this grave."\
}
execute unless score .check_costs.xp sgrave2.temp_var matches 1 run return run title @s actionbar {\
  "translate": "sgrave2.grave.ropen.fail.cannot_afford_cost.xp",\
  "fallback": "§cYou do not have the nessecary requirements to remotely open this grave.",\
  "with": [\
    {\
      "nbt": "configs.costs.grave_ropening_costs.owners.xp.levels.text_value",\
      "storage": "sgrave2:common",\
      "color": "red"\
    }\
  ]\
}

## Add temp tags
tag @s add sgrave2.temp.grave.interactor

## Give items
function sgrave2:internal/grave/ropen/give_items/main

## Give XP
function sgrave2:internal/grave/ropen/give_xp with storage sgrave2:common graves[-1].contents.xp

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1

## Update status
execute store result storage sgrave2:common temp.args1.pid int 1 run scoreboard players get @s sgrave2.pid
function sgrave2:internal/map/players/lookup with storage sgrave2:common temp.args1

data modify storage sgrave2:common temp.args2.id set from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.gid
data modify storage sgrave2:common graves[-1].data.status set value {obstructed:1b,obstruction_type:"ropened"}
data modify storage sgrave2:common graves[-1].data.status.obstructor set from storage sgrave2:common players[-1].player

function sgrave2:internal/map/players/lookup with entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.owner

function sgrave2:internal/map/players/graves/lookup with storage sgrave2:common temp.args2
data modify storage sgrave2:common players[-1].graves[-1].data.status set from storage sgrave2:common graves[-1].data.status

## Remove temp tag
tag @s remove sgrave2.temp.grave.interactor
