## Show grave info as admin (all grave info will be shown regardless of configs)
$scoreboard players set @s sgrave2.show_grave_info $(id)

$function sgrave2:internal/grave/show_info/show_admin {id: $(id)}

## Prevent loop
scoreboard players set @s sgrave2.show_grave_info 0