## Bring the grave element with the specified GID to the last index
$data modify storage sgrave2:common temp.grave set from storage sgrave2:common graves[{data:{gid:$(gid)}}]
$data remove storage sgrave2:common graves[{data:{gid:$(gid)}}]

data modify storage sgrave2:common graves append from storage sgrave2:common temp.grave