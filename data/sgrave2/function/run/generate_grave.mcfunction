## Disable Mod Compability Mode temporarily, try to generate grave, 
## then reset the config back to its previous value.
scoreboard players operation .mod_compability_mode sgrave2.temp_var = <mod_compability_mode> sgrave2.config
scoreboard players set <mod_compability_mode> sgrave2.config 0

execute as @s at @s run function sgrave2:internal/grave/generate

scoreboard players operation <mod_compability_mode> sgrave2.config = .mod_compability_mode sgrave2.temp_var 