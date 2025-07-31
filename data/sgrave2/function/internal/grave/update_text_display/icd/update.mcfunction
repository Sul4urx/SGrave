#<< grave/update_text_display/prepare

## Update current text display
$execute if data storage sgrave2:common temp.item.Slot run data modify entity @n[tag=sgrave2.temp.grave.text_display] text set value {"translate": "%s %s","with":[{"nbt": "temp.item.count","storage": "sgrave2:common","color": "gold"},$(slot_name)]}

execute unless data storage sgrave2:common temp.item.Slot run data modify entity @n[tag=sgrave2.temp.grave.text_display] text set value {"translate": "%s","with":[{"nbt": "temp.item.count","storage": "sgrave2:common","color": "gold"}]}