## Bring the grave element with the specified ID to the last index
$data modify storage sgrave2:common temp.grave set from storage sgrave2:common graves[{data:{id:$(id)}}]
$data remove storage sgrave2:common graves[{data:{id:$(id)}}]

data modify storage sgrave2:common graves append from storage sgrave2:common temp.grave