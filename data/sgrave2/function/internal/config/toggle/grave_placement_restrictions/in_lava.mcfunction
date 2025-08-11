#<< config/open_page/graves/grave_placement_restrictions

## Toggle value
scoreboard players add (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config 1
execute if score (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config matches 2.. run scoreboard players set (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config 0

## In Lava and On Lava sub-configs must not be both true
execute if score (graves/grave_placement_restrictions_restrictions/in_lava) sgrave2.config matches 1 if score (graves/grave_placement_restrictions_restrictions/on_lava) sgrave2.config matches 1 run scoreboard players set (graves/grave_placement_restrictions_restrictions/on_lava) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/grave_placement_restrictions