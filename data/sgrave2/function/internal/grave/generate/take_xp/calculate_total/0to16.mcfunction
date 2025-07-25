#<< grave/generate/take_xp/main

## If player's levels is a number from 0 to 16,
## the formula for converting levels to total xp is:
## levels^2 + 6*levels
scoreboard players operation .xp.value1 sgrave2.temp_var = .xp.levels sgrave2.temp_var
scoreboard players operation .xp.value1 sgrave2.temp_var *= .xp.value1 sgrave2.temp_var

scoreboard players operation .xp.value2 sgrave2.temp_var = .xp.levels sgrave2.temp_var
scoreboard players operation .xp.value2 sgrave2.temp_var *= (6) sgrave2.var

scoreboard players operation .xp.total sgrave2.temp_var += .xp.value1 sgrave2.temp_var
scoreboard players operation .xp.total sgrave2.temp_var += .xp.value2 sgrave2.temp_var