#<< config/open_page/graves/icd_properties

## Toggle value
scoreboard players add (config:graves/icd/switch_text_display) sgrave2.config 1
execute if score (config:graves/icd/switch_text_display) sgrave2.config matches 2.. run scoreboard players set (config:graves/icd/switch_text_display) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/icd_properties