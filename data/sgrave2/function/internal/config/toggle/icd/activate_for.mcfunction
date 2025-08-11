#<< config/open_page/graves/icd_properties

## Toggle value
scoreboard players add (config:graves/icd/activate_for) sgrave2.config 1
execute if score (config:graves/icd/activate_for) sgrave2.config matches 3.. run scoreboard players set (config:graves/icd/activate_for) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/icd_properties