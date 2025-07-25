#<< loop/1t

## Update unobstructed graves
data modify storage sgrave2:common unobstructed_graves set from storage sgrave2:common graves
data remove storage sgrave2:common unobstructed_graves[{data:{status:{obstructed:1b}}}]