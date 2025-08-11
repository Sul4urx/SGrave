#<< config/open_page/general
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
    max: 16\
  }\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.mod_compatibility_mode.item_collection_distance.fail",\
  "fallback": "§cThe value must be an integer between 0 and 16 (inclusive)."\
}

## Otherwise success
title @s actionbar {\
  "translate": "sgrave2.change_config_message.mod_compatibility_mode.item_collection_distance.success",\
  "fallback": "Successfully changed the Item Collection Distance config from %s to %s.",\
  "with": [\
    {"storage": "sgrave2:common", "nbt": "configs.mod_compatibility_mode.item_collection_distance.text_value"},\
    {"storage": "sgrave2:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (config:general/mod_compatibility_mode/item_collection_distance) sgrave2.config run data get storage sgrave2:common temp.config.value

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/general