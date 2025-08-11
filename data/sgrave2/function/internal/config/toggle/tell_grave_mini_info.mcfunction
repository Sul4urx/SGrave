#<< config/open_page/players

## Toggle value
scoreboard players add (config:graves/tell_grave_mini_info) sgrave2.config 1
execute if score (config:graves/tell_grave_mini_info) sgrave2.config matches 3.. run scoreboard players set (config:graves/tell_grave_mini_info) sgrave2.config 0

## Play sound
playsound minecraft:ui.button.click

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/players