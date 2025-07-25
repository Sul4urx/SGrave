#<< grave/show_info/show_admin/view_next/loop
#<< grave/show_info/show_admin/view_next

## If loop goes on for about 128 times, break out of loop
execute if score .loop_count sgrave2.temp_var matches 0 run return -1

## Save ID in `temp.id` data in storage and in `.id` temp score
$data modify storage sgrave2:common temp.id set value $(id)

execute store result score .id sgrave2.temp_var run data get storage sgrave2:common temp.id

## Save ID + 1 in `temp.args1.id` and add 1 to `.id` temp score
scoreboard players add .id sgrave2.temp_var 1
execute if score .id sgrave2.temp_var > (last_gid) sgrave2.var run scoreboard players operation .id sgrave2.temp_var = (first_gid) sgrave2.var
execute store result storage sgrave2:common temp.args1.id int 1 run scoreboard players get .id sgrave2.temp_var

## Prevent infinite loop
scoreboard players remove .loop_count sgrave2.temp_var 1

## Check if the grave with that ID can be shown to player
## If yes, break out of loop and show ID to player
$execute if data storage sgrave2:common graves[{data:{id:$(id)}}] run return $(id)

## Add 1 to ID each time
## until the grave with that ID can be shown to player
return run function sgrave2:internal/grave/show_info/show_admin/view_next/loop with storage sgrave2:common temp.args1



