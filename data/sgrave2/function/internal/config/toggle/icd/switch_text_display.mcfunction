#<< config/open_page/graves/icd_properties

## Toggle value
scoreboard players add <icd.switch_text_display> sgrave2.config 1
execute if score <icd.switch_text_display> sgrave2.config matches 2.. run scoreboard players set <icd.switch_text_display> sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/icd_properties