#<< grave/show_info/show_admin

## Save ID in `temp.id` data in storage and in `.id` temp score
$data modify storage sgrave2:common temp.id set value $(id)

execute store result score .id sgrave2.temp_var run data get storage sgrave2:common temp.id

## Save ID - 1 in `temp.args1.id` and remove 1 from `.id` temp score
scoreboard players remove .id sgrave2.temp_var 1
execute if score .id sgrave2.temp_var < (first_gid) sgrave2.var run scoreboard players operation .id sgrave2.temp_var = (last_gid) sgrave2.var
execute store result storage sgrave2:common temp.args1.id int 1 run scoreboard players get .id sgrave2.temp_var

## Prevent infinite loop
execute store result score .loop_count sgrave2.temp_var if data storage sgrave2:common graves[]

## Remove 1 from ID each time
## until the grave with that ID can be shown to player
execute store result score .return_value sgrave2.temp_var run function sgrave2:internal/grave/show_info/show_admin/view_previous/loop with storage sgrave2:common temp.args1

execute store result storage sgrave2:common temp.args2.id int 1 run scoreboard players get .return_value sgrave2.temp_var

function sgrave2:run/show_admin_grave_info with storage sgrave2:common temp.args2
