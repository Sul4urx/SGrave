scoreboard players remove .loop_count sgrave2.temp_var 1
execute unless block ~ ~-1 ~ #sgrave2:grave_replaceable run return run tp @s ~ ~ ~
execute unless score .loop_count sgrave2.temp_var matches ..0 if block ~ ~-1 ~ #sgrave2:grave_replaceable positioned ~ ~-1 ~ run function sgrave2:internal/grave/generate/grave_placement_restrictions/on_non_solid_blocks