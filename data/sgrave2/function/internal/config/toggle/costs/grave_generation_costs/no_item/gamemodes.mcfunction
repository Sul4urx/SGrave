#<< config/open_page/costs/grave_generation_costs

## Toggle value
$scoreboard players add (costs/grave_generation_costs/no_item/gamemodes/$(gamemode)) sgrave2.config 1
$execute if score (costs/grave_generation_costs/no_item/gamemodes/$(gamemode)) sgrave2.config matches 2.. run scoreboard players set (costs/grave_generation_costs/no_item/gamemodes/$(gamemode)) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/costs/grave_generation_costs