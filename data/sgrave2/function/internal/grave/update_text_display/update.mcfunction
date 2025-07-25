#<< grave/update_text_display/prepare

## Update current text display
$data modify entity @n[tag=sgrave2.temp.grave.text_display] text set value [{"nbt": "item.components.minecraft:custom_data.sgrave2:common.owner.name","entity": "@n[tag=sgrave2.temp.grave.base]","color": "green"},{"translate": " #%s\n","color": "gold","with": [{"nbt": "item.components.minecraft:custom_data.sgrave2:common.gid","entity": "@n[tag=sgrave2.temp.grave.base]"}]},$(despawn_time_text)]