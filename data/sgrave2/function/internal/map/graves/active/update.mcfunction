#<< loop/1t

## Update active graves
data modify storage sgrave2:common active_graves set from storage sgrave2:common graves
data remove storage sgrave2:common active_graves[{data:{status:{destroyed:1b}}}]