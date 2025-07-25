#<< config/change/icd/item_cycle_cooldown
$data modify storage sgrave2:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.value"\
  },\
  range: {\
    min: 0,\
    max: 160\
  }\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.icd.item_cycle_cooldown.fail",\
  "fallback": "§cThe value must be an integer between 0 and 160 (inclusive)."\
}

## Otherwise success
title @s actionbar {\
  "translate": "sgrave2.change_config_message.icd.item_cycle_cooldown.success",\
  "fallback": "Successfully changed the Item Cycle Cooldown config from %s levels to %s levels.",\
  "with": [\
    {"storage": "sgrave2:common", "nbt": "configs.icd.item_cycle_cooldown.text_value"},\
    {"storage": "sgrave2:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score <icd.item_cycle_cooldown> sgrave2.config run data get storage sgrave2:common temp.config.value

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/graves/icd_properties