#<< grave/generate/take_xp/main

## If player's levels is a number from 17 to 31,
## the formula for converting levels to total xp is:
## 2.5*(levels^2) - 40.5*levels + 360 
scoreboard players operation .xp.value1 sgrave2.temp_var = .xp.levels sgrave2.temp_var
scoreboard players operation .xp.value1 sgrave2.temp_var *= .xp.value1 sgrave2.temp_var
scoreboard players operation .xp.value1 sgrave2.temp_var *= (25) sgrave2.var

scoreboard players operation .xp.value2 sgrave2.temp_var = .xp.levels sgrave2.temp_var
scoreboard players operation .xp.value2 sgrave2.temp_var *= (405) sgrave2.var

scoreboard players operation .xp.total sgrave2.temp_var += .xp.value1 sgrave2.temp_var
scoreboard players operation .xp.total sgrave2.temp_var -= .xp.value2 sgrave2.temp_var
scoreboard players add .xp.total sgrave2.temp_var 3600
scoreboard players operation .xp.total sgrave2.temp_var /= (10) sgrave2.var