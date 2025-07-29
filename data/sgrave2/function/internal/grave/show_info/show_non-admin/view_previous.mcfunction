#<< grave/show_info/show_non-admin/an
#<< grave/show_info/show_non-admin/ao
#<< grave/show_info/show_non-admin/bn
#<< grave/show_info/show_non-admin/bn

## Save ID in `temp.id` data in storage and in `.id` temp score
execute store result storage sgrave2:common temp.id int 1 run scoreboard players get @s sgrave2.show_grave_info.view_previous

execute store result score .id sgrave2.temp_var run data get storage sgrave2:common temp.id

## Save ID - 1 in `temp.args1.id` and remove 1 from `.id` temp score
scoreboard players remove .id sgrave2.temp_var 1
execute if score .id sgrave2.temp_var < (first_gid) sgrave2.var run scoreboard players operation .id sgrave2.temp_var = (last_gid) sgrave2.var
execute store result storage sgrave2:common temp.args1.id int 1 run scoreboard players get .id sgrave2.temp_var

## Save player ID
execute store result storage sgrave2:common temp.args1.pid int 1 run scoreboard players get @s sgrave2.pid

## Prevent infinite loop
execute store result score .loop_count sgrave2.temp_var if data storage sgrave2:common graves[]

## Remove 1 from ID each time
## until the grave with that ID can be shown to player
execute store result score .return_value sgrave2.temp_var run function sgrave2:internal/grave/show_info/show_non-admin/view_previous/loop with storage sgrave2:common temp.args1

scoreboard players operation @s sgrave2.show_grave_info = .return_value sgrave2.temp_var

function sgrave2:internal/grave/show_info/check_conditions

scoreboard players set @s sgrave2.show_grave_info 0

