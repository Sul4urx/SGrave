scoreboard players remove .loop_count sgrave2.temp_var 1
execute unless block ~ ~-1 ~ #minecraft:air run return run tp @s ~ ~ ~
execute unless score .loop_count sgrave2.temp_var matches ..0 if block ~ ~-1 ~ #minecraft:air positioned ~ ~-1 ~ run function sgrave2:internal/grave/generate/grave_placement_restrictions/on_air