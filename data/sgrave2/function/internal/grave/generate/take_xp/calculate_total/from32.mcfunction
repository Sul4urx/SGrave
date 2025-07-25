#<< grave/generate/take_xp/main

## If player's levels ≥ 32,
## the formula for converting levels to total xp is:
## 4.5*(levels^2) - 162.5*levels + 2220
scoreboard players operation .xp.value1 sgrave2.temp_var = .xp.levels sgrave2.temp_var
scoreboard players operation .xp.value1 sgrave2.temp_var *= .xp.value1 sgrave2.temp_var
scoreboard players operation .xp.value1 sgrave2.temp_var *= (45) sgrave2.var

scoreboard players operation .xp.value2 sgrave2.temp_var = .xp.levels sgrave2.temp_var
scoreboard players operation .xp.value2 sgrave2.temp_var *= (1625) sgrave2.var

scoreboard players operation .xp.total sgrave2.temp_var += .xp.value1 sgrave2.temp_var
scoreboard players operation .xp.total sgrave2.temp_var -= .xp.value2 sgrave2.temp_var
scoreboard players add .xp.total sgrave2.temp_var 22200
scoreboard players operation .xp.total sgrave2.temp_var /= (10) sgrave2.var