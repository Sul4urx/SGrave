#<< config/open_page/dropped_contents
$data modify storage sgrave2:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.value"\
  },\
  range: {min: 0}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.despawn_time.xp.fail",\
  "fallback": "§cThe value must be a non-negative integer."\
}

## Otherwise success
title @s actionbar {\
  "translate": "sgrave2.change_config_message.despawn_time.xp.success",\
  "fallback": "Successfully changed the XP Despawn Time config from %s seconds to %s seconds.",\
  "with": [\
    {"storage": "sgrave2:common", "nbt": "configs.dropped_contents.xp.despawn_time.value"},\
    {"storage": "sgrave2:common", "nbt": "temp.config.value"}\
  ]\
}

## If success, change value
execute store result score (dropped_contents/xp_despawn_time) sgrave2.config run data get storage sgrave2:common temp.config.value

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/dropped_contents