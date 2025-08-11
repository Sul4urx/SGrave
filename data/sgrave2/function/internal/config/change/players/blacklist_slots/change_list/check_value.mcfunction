#<< config/change/players/blacklist_slots/change_list

# Check if provided list is valid

## Make a copy of the list
data modify storage sgrave2:common temp.config.value_copy set from storage sgrave2:common temp.config.value

## Remove all valid values
data remove storage sgrave2:common temp.config.value_copy[{slot:'h1'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'h2'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'h3'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'h4'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'h5'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'h6'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'h7'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'h8'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'h9'}]

data remove storage sgrave2:common temp.config.value_copy[{slot:'ib1'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'ib2'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'ib3'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'ib4'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'ib5'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'ib6'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'ib7'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'ib8'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'ib9'}]

data remove storage sgrave2:common temp.config.value_copy[{slot:'im1'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'im2'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'im3'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'im4'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'im5'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'im6'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'im7'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'im8'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'im9'}]

data remove storage sgrave2:common temp.config.value_copy[{slot:'it1'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'it2'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'it3'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'it4'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'it5'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'it6'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'it7'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'it8'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'it9'}]

data remove storage sgrave2:common temp.config.value_copy[{slot:'offhand'}]

data remove storage sgrave2:common temp.config.value_copy[{slot:'head'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'chest'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'legs'}]
data remove storage sgrave2:common temp.config.value_copy[{slot:'feet'}]

## If the list is empty, then there
## must not be any invalid values
execute unless data storage sgrave2:common temp.config.value_copy[0] run return 1