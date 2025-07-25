#<< config/open_page/graves/grave_placement_restrictions

## Toggle value
scoreboard players add <grave_placement_restrictions.above_build_height_limit> sgrave2.config 1
execute if score <grave_placement_restrictions.above_build_height_limit> sgrave2.config matches 2.. run scoreboard players set <grave_placement_restrictions.above_build_height_limit> sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/grave_placement_restrictions