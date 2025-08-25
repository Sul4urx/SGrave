## Add grave to grave map
data modify storage sgrave2:common graves append value {}

## Set contents (items and XP)
data modify storage sgrave2:common graves[-1].contents.items set from entity @s item.components.minecraft:custom_data.sgrave2:common.items
data modify storage sgrave2:common graves[-1].contents.xp set from entity @s item.components.minecraft:custom_data.sgrave2:common.xp

## Set data (status, position, dimension, etc)

##> Status
data modify storage sgrave2:common graves[-1].data.status set value {obstructed:0b}

##> Position
data modify storage sgrave2:common graves[-1].data.pos set from entity @s Pos

##> Dimension resource location
data modify storage sgrave2:common graves[-1].data.dimension.id set from entity @p[distance=0..] Dimension
data modify storage sgrave2:common graves[-1].data.dimension.name set from entity @p[distance=0..] Dimension

##> To display position of a grave, pos_integer is used instead of pos
##> because integers don't have a suffix
##> and also because graves always generate in a fixed location
data modify storage sgrave2:common graves[-1].data.pos_integer set value [I;]
data modify storage sgrave2:common graves[-1].data.pos_integer append from storage sgrave2:common graves[-1].data.pos[0] 
data modify storage sgrave2:common graves[-1].data.pos_integer append from storage sgrave2:common graves[-1].data.pos[1]
data modify storage sgrave2:common graves[-1].data.pos_integer append from storage sgrave2:common graves[-1].data.pos[2]

##> Creation time (used for show grave info feature)
data modify storage sgrave2:common graves[-1].data.creation_time set from entity @s item.components.minecraft:custom_data.sgrave2:common.creation_time

##> Dimension name
execute if dimension minecraft:overworld run data modify storage sgrave2:common graves[-1].data.dimension.name set value "The Overworld"
execute if dimension minecraft:the_nether run data modify storage sgrave2:common graves[-1].data.dimension.name set value "The Nether"
execute if dimension minecraft:the_end run data modify storage sgrave2:common graves[-1].data.dimension.name set value "The End"

## Set Grave ID
execute store result score @s sgrave2.gid run scoreboard players add .global sgrave2.gid 1
execute store result storage sgrave2:common graves[-1].data.id int 1 run scoreboard players get @s sgrave2.gid

