#<< config/open_page/costs/grave_generation_costs
$data modify storage sgrave2:common temp.config.value set value $(value)

## Error if value is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.value"\
  },\
  range: {min: 0, max: 100}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.with_item.xp.fail",\
  "fallback": "§cThe value must be an integer between 0 and 100 (inclusive)."\
}

## Otherwise change values
execute store result score (costs/grave_generation_costs/with_item/xp) sgrave2.config run data get storage sgrave2:common temp.config.value

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/costs/grave_generation_costs