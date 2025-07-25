#<< config/open_page/costs/grave_opening_costs

## Toggle value
$scoreboard players add <grave_opening_costs.non_owners.gamemodes.$(gamemode)> sgrave2.config 1
$execute if score <grave_opening_costs.non_owners.gamemodes.$(gamemode)> sgrave2.config matches 2.. run scoreboard players set <grave_opening_costs.non_owners.gamemodes.$(gamemode)> sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/costs/grave_opening_costs