#<< config/open_page/graves/show_grave_info

## Toggle value
scoreboard players add <show_grave_info--bo--location.xyz> sgrave2.config 1
execute if score <show_grave_info--bo--location.xyz> sgrave2.config matches 2.. run scoreboard players set <show_grave_info--bo--location.xyz> sgrave2.config 0


## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/show_grave_info