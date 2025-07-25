#<< grave/main
#<< grave/icd/check_conditions
#<< grave/icd/display

## Cancel or deactivate ICD feature
execute on passengers if entity @s[tag=sgrave2.grave.icd] run kill @s
data modify entity @s item.components.minecraft:custom_data.sgrave2:common.icd_activated set value 0b
