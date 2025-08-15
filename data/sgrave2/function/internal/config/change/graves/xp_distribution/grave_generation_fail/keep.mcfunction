#<< config/open_page/graves/xp_distribution
$data modify storage sgrave2:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.value"\
  },\
  range: {min: 0, max: 25}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.graves.xp_distribution.grave_generation_fail.keep.fail",\
  "fallback": "§cThe value must be an integer between 0 and 25 (inclusive)."\
}

## Otherwise success
title @s actionbar {\
  "translate": "sgrave2.change_config_message.graves.xp_distribution.grave_generation_fail.keep.success",\
  "fallback": "Successfully changed the 'keep' operation weight from %s to %s.",\
  "with": [\
    {"storage": "sgrave2:common", "nbt": "configs.graves.xp_distribution.grave_generation_fail.keep.value"},\
    {"storage": "sgrave2:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (graves/xp_distribution/grave_generation_fail/keep) sgrave2.config run data get storage sgrave2:common temp.config.value

## Update configs
function sgrave2:internal/config/register

## Warning if total weight is 0
execute unless score (graves/xp_distribution/grave_generation_fail/total) sgrave2.config matches 1.. run title @s actionbar {\
  "translate": "sgrave2.change_config_message.graves.xp_distribution.grave_generation_fail.total.warning.is_0",\
  "fallback": "§6Be careful, the total weight must not be 0!"\
}

## Refresh page
function sgrave2:internal/config/open_page/graves/xp_distribution