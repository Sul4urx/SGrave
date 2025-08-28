#<< grave/despawn_time/decrease

## Update status
data modify storage sgrave2:common graves[-1].data.status set value {destroyed:1b,destruction_type:"despawned"}
data modify storage sgrave2:common players[-1].graves[-1].data.status set from storage sgrave2:common graves[-1].data.status

## Delete grave
execute on passengers run kill @s[tag=sgrave2.grave.interaction]
execute on passengers run kill @s[tag=sgrave2.grave.player_head]
execute on passengers run kill @s[tag=sgrave2.grave.text_display]
kill @s