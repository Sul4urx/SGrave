#<< config/open_page/costs/grave_generation_costs
$data modify storage sgrave2:common temp.config.levels set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.levels"\
  },\
  range: {min: 0}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail",\
  "fallback": "§Value must be a non-negative integer."\
}

## Otherwise change values
execute store result score <grave_generation_costs.no_item.xp.levels> sgrave2.config run data get storage sgrave2:common temp.config.levels

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/costs/grave_generation_costs