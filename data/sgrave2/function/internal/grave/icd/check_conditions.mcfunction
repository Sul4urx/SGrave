#<< grave/main

## If no items, cancel feature
execute as @n[tag=sgrave2.temp.grave.base] at @s unless data entity @s item.components.minecraft:custom_data.sgrave2:common.items[0] run return run function sgrave2:internal/grave/icd/cancel

## Honestly I have no idea what this does
execute store result storage sgrave2:common temp.args.id int 1 run scoreboard players get @s sgrave2.pid

## Display the feature
execute as @n[tag=sgrave2.temp.grave.base] at @s run function sgrave2:internal/grave/icd/display
