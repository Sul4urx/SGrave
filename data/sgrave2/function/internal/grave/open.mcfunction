#<< event/player/player_interacted_with_grave

## Check and apply costs
execute as @p[tag=sgrave2.temp.grave.interactor,tag=sgrave2.temp.grave.owner] at @s run function sgrave2:internal/grave/open/check_costs/owners
execute as @p[tag=sgrave2.temp.grave.interactor,tag=!sgrave2.temp.grave.owner] at @s run function sgrave2:internal/grave/open/check_costs/non_owners

execute unless score .check_costs.gamemodes sgrave2.temp_var matches 1 run return run title @p[tag=sgrave2.temp.grave.interactor] actionbar {\
  "translate": "sgrave2.grave.open.fail.cannot_afford_cost.gamemodes",\
  "fallback": "§cYou do not have the nessecary requirements to open or break this grave."\
}
execute unless score .check_costs.items sgrave2.temp_var matches 1 run return run title @p[tag=sgrave2.temp.grave.interactor] actionbar {\
  "translate": "sgrave2.grave.open.fail.cannot_afford_cost.items",\
  "fallback": "§cYou do not have the nessecary requirements to open or break this grave."\
}
execute unless score .check_costs.xp sgrave2.temp_var matches 1 run return run title @p[tag=sgrave2.temp.grave.interactor] actionbar {\
  "translate": "sgrave2.grave.open.fail.cannot_afford_cost.xp",\
  "fallback": "§cYou do not have the nessecary requirements to open or break this grave.",\
  "with": [\
    {\
      "nbt": "configs.text.costs.grave_opening_costs.owners.xp.levels",\
      "storage": "sgrave2:common",\
      "color": "red"\
    }\
  ]\
}

## Give items
execute unless data entity @s item.components.minecraft:custom_data.sgrave2:common{icd_activated:1b} run function sgrave2:internal/grave/open/give_items/main
execute if data entity @s item.components.minecraft:custom_data.sgrave2:common{icd_activated:1b} as @n[tag=sgrave2.temp.grave.interactor] at @s run return run function sgrave2:internal/grave/open/give_icd_item

## Give XP
data modify storage sgrave2:common temp.args.value set from entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.after_death.total

execute as @p[tag=sgrave2.temp.grave.interactor] at @s run function sgrave2:internal/macro/xp_add with storage sgrave2:common temp.args

## Play sound
playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 1

## Update status
execute as @p[tag=sgrave2.temp.grave.interactor] at @s run function sgrave2:internal/map/players/lookup with entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.owner

data modify storage sgrave2:common temp.args.gid set from entity @s item.components.minecraft:custom_data.sgrave2:common.gid
function sgrave2:internal/map/graves/lookup with storage sgrave2:common temp.args
data modify storage sgrave2:common graves[-1].data.status set value {destroyed:1b,destruction_type:"opened"}
data modify storage sgrave2:common graves[-1].data.status.destroyer set from storage sgrave2:common players[-1].player

function sgrave2:internal/map/players/graves/lookup with storage sgrave2:common temp.args
data modify storage sgrave2:common players[-1].graves[-1].data.status set from storage sgrave2:common graves[-1].data.status

## Delete grave
function sgrave2:internal/grave/delete