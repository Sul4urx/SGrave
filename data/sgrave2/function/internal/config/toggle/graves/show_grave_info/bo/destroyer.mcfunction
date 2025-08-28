#<< config/open_page/graves/show_grave_info

## Toggle value
scoreboard players add (graves/show_grave_info/bo/destroyer) sgrave2.config 1
execute if score (graves/show_grave_info/bo/destroyer) sgrave2.config matches 2.. run scoreboard players set (graves/show_grave_info/bo/destroyer) sgrave2.config 0


## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/show_grave_info