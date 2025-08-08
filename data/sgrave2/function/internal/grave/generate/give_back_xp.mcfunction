## Give XP back

execute if data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/give_back_xp/with_item

execute unless data entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.items[0] run function sgrave2:internal/grave/generate/give_back_xp/no_item