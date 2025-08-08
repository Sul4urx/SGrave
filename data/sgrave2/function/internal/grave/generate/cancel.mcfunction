#<< grave/generate/cancel

## Apply costs

##> XP
execute if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/cancel/give_back_xp/with_item

execute unless data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/cancel/give_back_xp/no_item

## Cancel grave generating process
kill @e[tag=sgrave2.temp.grave.base]
kill @e[tag=sgrave2.temp.grave.player_head]