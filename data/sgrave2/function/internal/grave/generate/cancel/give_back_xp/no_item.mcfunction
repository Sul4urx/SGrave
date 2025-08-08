## Initialize variables
execute store result score .xp_weight.remove sgrave2.temp_var run data get storage sgrave2:common configs.grave_generation_costs.no_item.xp.weights.fail.remove
execute store result score .xp_weight.keep sgrave2.temp_var run data get storage sgrave2:common configs.grave_generation_costs.no_item.xp.weights.fail.keep

scoreboard players operation .xp_weight.total sgrave2.temp_var = .xp_weight.remove sgrave2.temp_var
scoreboard players operation .xp_weight.total sgrave2.temp_var += .xp_weight.keep sgrave2.temp_var
scoreboard players operation .xp_weight.total sgrave2.temp_var += .xp_weight.take sgrave2.temp_var

execute store result score .xp.total.before_death sgrave2.temp_var run data get entity @n[tag=sgrave2.temp.grave.base] item.components.minecraft:custom_data.sgrave2:common.xp.before_death.total

## Calculate keep XP
########################################
# (2520 * xb * wk) // (2520 * tw) = xk #
########################################
# xb = XP total (before death)         #
# xk = XP to keep                      #
# wk = Keep operation weight           #
# tw = Total operation weight          #
########################################
scoreboard players operation .xb sgrave2.temp_var = .xp.total.before_death sgrave2.temp_var
scoreboard players operation .wk sgrave2.temp_var = .xp_weight.keep sgrave2.temp_var
scoreboard players operation .tw sgrave2.temp_var = .xp_weight.total sgrave2.temp_var

scoreboard players set .v1 sgrave2.temp_var 2520
scoreboard players operation .v1 sgrave2.temp_var *= .xb sgrave2.temp_var
scoreboard players operation .v1 sgrave2.temp_var *= .wk sgrave2.temp_var

scoreboard players set .v2 sgrave2.temp_var 2520
scoreboard players operation .v2 sgrave2.temp_var *= .tw sgrave2.temp_var

scoreboard players operation .xk sgrave2.temp_var = .v1 sgrave2.temp_var
scoreboard players operation .xk sgrave2.temp_var /= .v2 sgrave2.temp_var


## Apply operation 'keep'
execute store result storage sgrave2:common temp.args.value int 1 run scoreboard players get .xk sgrave2.temp_var
function sgrave2:internal/macro/xp_add with storage sgrave2:common temp.args
