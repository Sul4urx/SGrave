scoreboard players remove .loop_count sgrave2.temp_var 1
execute if block ~ ~ ~ #sgrave2:grave_replaceable run return run tp @s ~ ~ ~
execute if block ~ ~ ~ #minecraft:air run return run tp @s ~ ~ ~
execute unless score .loop_count sgrave2.temp_var matches ..0 unless block ~ ~ ~ #sgrave2:grave_replaceable unless block ~ ~ ~ #minecraft:air positioned ~ ~1 ~ run function sgrave2:internal/grave/generate/grave_placement_restrictions/in_solid_blocks