## Disable Mod Compatibility Mode temporarily, try to generate grave, 
## then reset the config back to its previous value.
scoreboard players operation .mod_compatibility_mode sgrave2.temp_var = (general/mod_compatibility_mode) sgrave2.config
scoreboard players set (general/mod_compatibility_mode) sgrave2.config 0

execute as @s at @s run function sgrave2:internal/grave/generate

scoreboard players operation (general/mod_compatibility_mode) sgrave2.config = .mod_compatibility_mode sgrave2.temp_var 