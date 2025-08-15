#<< grave/generate/cancel

## Distribute XP
function sgrave2:internal/grave/generate/cancel/distribute_xp

## Cancel grave generating process
kill @e[tag=sgrave2.temp.grave.base]
kill @e[tag=sgrave2.temp.grave.player_head]