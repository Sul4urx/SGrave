## Bring the player element with the specified ID to the last index
$data modify storage sgrave2:common temp.player set from storage sgrave2:common players[{player:{id:$(pid)}}]
$data remove storage sgrave2:common players[{player:{id:$(pid)}}]

data modify storage sgrave2:common players append from storage sgrave2:common temp.player