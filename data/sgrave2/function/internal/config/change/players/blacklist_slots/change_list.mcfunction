#<< config/open_page/players
$data modify storage sgrave2:common temp.config.value set value $(value)

## Error if value is not list
execute unless data storage sgrave2:common temp.config.value[] unless data storage sgrave2:common temp.config{value:[]} run title @s actionbar {\
  "translate": "sgrave2.change_config_message.blacklist_slots.change_list.fail",\
  "fallback": "§cThe value must be a list."\
}

## Error if list is not valid
execute store result score .is_valid sgrave2.temp_var run function sgrave2:internal/config/change/players/blacklist_slots/change_list/check_value with storage sgrave2:common temp.config

execute if data storage sgrave2:common temp.config.value[] unless score .is_valid sgrave2.temp_var matches 1 run title @s actionbar {\
  "translate": "sgrave2.change_config_message.blacklist_slots.change_list.fail",\
  "fallback": "§cAll slots must be valid."\
}

## Otherwise success
execute if data storage sgrave2:common temp.config.value[] if score .is_valid sgrave2.temp_var matches 1 run title @s actionbar {\
  "translate": "sgrave2.change_config_message.blacklist_slots.change_list.success",\
  "fallback": "Successfully changed the list."\
}

execute if data storage sgrave2:common temp.config{value:[]} run title @s actionbar {\
  "translate": "sgrave2.change_config_message.blacklist_slots.change_list.success",\
  "fallback": "Successfully changed the list."\
}

## If success, change value
execute if data storage sgrave2:common temp.config.value[] if score .is_valid sgrave2.temp_var matches 1 run data modify storage sgrave2:common configs.value.players.blacklist_slots set from storage sgrave2:common temp.config.value
execute if data storage sgrave2:common temp.config{value:[]} run data modify storage sgrave2:common configs.value.players.blacklist_slots set value []

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/players