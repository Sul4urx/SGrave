## Bring the player element with the specified PID to the last index
$data modify storage sgrave2:common temp.player set from storage sgrave2:common players[{player:{pid:$(pid)}}]
$data remove storage sgrave2:common players[{player:{pid:$(pid)}}]

data modify storage sgrave2:common players append from storage sgrave2:common temp.player