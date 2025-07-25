#<< grave/generate/grave_placement_restrictions

## Remove one from iteration count
scoreboard players remove .loop_count sgrave2.temp_var 1

## Teleport one block up
## If 
execute if block ~ ~ ~ minecraft:lava run return run tp @s ~ ~ ~

execute unless score .loop_count sgrave2.temp_var matches ..0 unless block ~ ~ ~ minecraft:lava positioned ~ ~1 ~ run function sgrave2:internal/grave/generate/grave_placement_restrictions/in_lava