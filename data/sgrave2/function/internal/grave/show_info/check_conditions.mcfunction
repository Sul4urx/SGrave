#<< loop/1t

# Check conditions to see if grave info should be shown to player

## If ID is from -128 to -1, show IDth grave
execute if score @s sgrave2.show_grave_info matches -128..-1 run scoreboard players operation .gid sgrave2.temp_var = (first_gid) sgrave2.var
execute if score @s sgrave2.show_grave_info matches -128..-1 run scoreboard players operation .gid sgrave2.temp_var -= @s sgrave2.show_grave_info
execute if score @s sgrave2.show_grave_info matches -128..-1 run scoreboard players remove .gid sgrave2.temp_var 1
execute if score @s sgrave2.show_grave_info matches -128..-1 run scoreboard players operation @s sgrave2.show_grave_info = .gid sgrave2.temp_var

## If ID is from 1 to 128, show last IDth grave
execute if score @s sgrave2.show_grave_info matches 1..128 run scoreboard players operation .gid sgrave2.temp_var = (last_gid) sgrave2.var
execute if score @s sgrave2.show_grave_info matches 1..128 run scoreboard players operation .gid sgrave2.temp_var -= @s sgrave2.show_grave_info
execute if score @s sgrave2.show_grave_info matches 1..128 run scoreboard players add .gid sgrave2.temp_var 1
execute if score @s sgrave2.show_grave_info matches 1..128 run scoreboard players operation @s sgrave2.show_grave_info = .gid sgrave2.temp_var

## Read the input ID and store it
execute store result storage sgrave2:common temp.args.id int 1 run scoreboard players get @s sgrave2.show_grave_info

## Check if the grave has ever existed before
execute store result score .grave_exists sgrave2.temp_var run function sgrave2:internal/grave/show_info/check_if_grave_exists with storage sgrave2:common temp.args

##> If not, tell error to player
execute if score .grave_exists sgrave2.temp_var matches 0 run return run title @s actionbar {\
  "translate": "sgrave2.grave_info.fail.gid_no_exist",\
  "fallback": "Grave §6#%s§r does not exist.",\
  "with": [\
    {\
      "nbt": "temp.args.id",\
      "storage": "sgrave2:common",\
      "color": "gold"\
    }\
  ]\
}

##
function sgrave2:internal/map/graves/lookup with storage sgrave2:common temp.args

## Check for type:
## N: Unobstructed grave belonging to the player
## B: Obstructed grave belonging to the player
## O: Unobstructed grave not belonging to the player
## BO: Obstructed grave not belonging to the player
execute store result score .stored_pid sgrave2.temp_var run data get storage sgrave2:common graves[-1].data.owner.id

##> N
execute if score .stored_pid sgrave2.temp_var = @s sgrave2.pid unless data storage sgrave2:common graves[-1].data.status{obstructed:1b} unless score <show_grave_info--ao> sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_non-admin/ao with storage sgrave2:common temp.args

execute if score .stored_pid sgrave2.temp_var = @s sgrave2.pid unless data storage sgrave2:common graves[-1].data.status{obstructed:1b} if score <show_grave_info--ao> sgrave2.config matches 0 run title @s actionbar {"translate": "sgrave2.grave_info.fail.cannot_view_contents", "fallback": "You cannot view the contents of this grave."}

##> B
execute if score .stored_pid sgrave2.temp_var = @s sgrave2.pid if data storage sgrave2:common graves[-1].data.status{obstructed:1b} unless score <show_grave_info--bo> sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_non-admin/bo with storage sgrave2:common temp.args

execute if score .stored_pid sgrave2.temp_var = @s sgrave2.pid if data storage sgrave2:common graves[-1].data.status{obstructed:1b} if score <show_grave_info--bo> sgrave2.config matches 0 run title @s actionbar {"translate": "sgrave2.grave_info.fail.cannot_view_contents", "fallback": "You cannot view the contents of this grave."}

##> O
execute unless score .stored_pid sgrave2.temp_var = @s sgrave2.pid unless data storage sgrave2:common graves[-1].data.status{obstructed:1b} unless score <show_grave_info--an> sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_non-admin/an with storage sgrave2:common temp.args

execute unless score .stored_pid sgrave2.temp_var = @s sgrave2.pid unless data storage sgrave2:common graves[-1].data.status{obstructed:1b} if score <show_grave_info--an> sgrave2.config matches 0 run title @s actionbar {"translate": "sgrave2.grave_info.fail.cannot_view_contents", "fallback": "You cannot view the contents of this grave."}

##> BO
execute unless score .stored_pid sgrave2.temp_var = @s sgrave2.pid if data storage sgrave2:common graves[-1].data.status{obstructed:1b} unless score <show_grave_info--bn> sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_non-admin/bn with storage sgrave2:common temp.args

execute unless score .stored_pid sgrave2.temp_var = @s sgrave2.pid if data storage sgrave2:common graves[-1].data.status{obstructed:1b} if score <show_grave_info--bn> sgrave2.config matches 0 run title @s actionbar {"translate": "sgrave2.grave_info.fail.cannot_view_contents", "fallback": "You cannot view the contents of this grave."}