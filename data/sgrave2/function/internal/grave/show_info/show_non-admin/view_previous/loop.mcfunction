#<< grave/show_info/show_non-admin/view_previous/loop
#<< grave/show_info/show_non-admin/view_previous

## If loop goes on for about 128 times, break out of loop
execute if score .loop_count sgrave2.temp_var matches 0 run return -1

## Save ID in `temp.id` data in storage and in `.id` temp score
$data modify storage sgrave2:common temp.id set value $(id)

execute store result score .id sgrave2.temp_var run data get storage sgrave2:common temp.id

## Save ID - 1 in `temp.args1.id` and remove 1 from `.id` temp score
scoreboard players remove .id sgrave2.temp_var 1
execute if score .id sgrave2.temp_var < (first_gid) sgrave2.var run scoreboard players operation .id sgrave2.temp_var = (last_gid) sgrave2.var
execute store result storage sgrave2:common temp.args1.id int 1 run scoreboard players get .id sgrave2.temp_var

## Prevent infinite loop
scoreboard players remove .loop_count sgrave2.temp_var 1

## Check if the grave with that ID can be shown to player
## If yes, break out of loop and show ID to player
$execute if data storage sgrave2:common graves[{data:{id:$(id)}}] if data storage sgrave2:common graves[{data:{id:$(id),status:{obstructed:1b}}}] if data storage sgrave2:common graves[{data:{id:$(id),owner:{id:$(pid)}}}] if score (graves/show_grave_info/bo) sgrave2.config matches 1 run return $(id)

$execute if data storage sgrave2:common graves[{data:{id:$(id)}}] if data storage sgrave2:common graves[{data:{id:$(id),status:{obstructed:1b}}}] unless data storage sgrave2:common graves[{data:{id:$(id),owner:{id:$(pid)}}}] if score (graves/show_grave_info/bn) sgrave2.config matches 1 run return $(id)

$execute if data storage sgrave2:common graves[{data:{id:$(id)}}] unless data storage sgrave2:common graves[{data:{id:$(id),status:{obstructed:1b}}}] if data storage sgrave2:common graves[{data:{id:$(id),owner:{id:$(pid)}}}] if score (graves/show_grave_info/ao) sgrave2.config matches 1 run return $(id)

$execute if data storage sgrave2:common graves[{data:{id:$(id)}}] unless data storage sgrave2:common graves[{data:{id:$(id),status:{obstructed:1b}}}] unless data storage sgrave2:common graves[{data:{id:$(id),owner:{id:$(pid)}}}] if score (graves/show_grave_info/an) sgrave2.config matches 1 run return $(id)

## Remove 1 from ID each time
## until the grave with that ID can be shown to player
return run function sgrave2:internal/grave/show_info/show_non-admin/view_previous/loop with storage sgrave2:common temp.args1



