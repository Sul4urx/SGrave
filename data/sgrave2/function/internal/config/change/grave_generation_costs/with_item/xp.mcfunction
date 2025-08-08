#<< config/open_page/costs/grave_generation_costs
$data modify storage sgrave2:common temp.config set value $(value)

## Error if value is not valid
execute unless data storage sgrave2:common temp.config.levels run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail",\
  "fallback": "§cInvalid format"\
}

execute unless data storage sgrave2:common temp.config.weights.fail.remove run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail",\
  "fallback": "§cInvalid format"\
}
execute unless data storage sgrave2:common temp.config.weights.fail.keep run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail",\
  "fallback": "§cInvalid format"\
}

execute unless data storage sgrave2:common temp.config.weights.success.remove run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail",\
  "fallback": "§cInvalid format"\
}
execute unless data storage sgrave2:common temp.config.weights.success.keep run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail",\
  "fallback": "§cInvalid format"\
}
execute unless data storage sgrave2:common temp.config.weights.success.take run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail",\
  "fallback": "§cInvalid format"\
}


## Error if 'levels' is not valid
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.levels"\
  },\
  range: {min: 0, max: 100}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.levels.fail",\
  "fallback": "§cAll weights must be an integer between 0 and 100 (inclusive)."\
}

## Error if weights are not valid

##> fail.remove
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.weights.fail.remove"\
  },\
  range: {min: 0, max: 25}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail.remove.fail",\
  "fallback": "§cAll weights must be an integer between 0 and 25 (inclusive)."\
}

##> fail.keep
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.weights.fail.keep"\
  },\
  range: {min: 0, max: 25}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail.keep.fail",\
  "fallback": "§cAll weights must be an integer between 0 and 25 (inclusive)."\
}

##> success.remove
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.weights.success.remove"\
  },\
  range: {min: 0, max: 25}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.success.remove.fail",\
  "fallback": "§cAll weights must be an integer between 0 and 25 (inclusive)."\
}

##> success.keep
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.weights.success.keep"\
  },\
  range: {min: 0, max: 25}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.success.keep.fail",\
  "fallback": "§cAll weights must be an integer between 0 and 25 (inclusive)."\
}

##> success.take
execute unless predicate {\
  condition: "minecraft:value_check",\
  value: {\
    type: "minecraft:storage",\
    storage: "sgrave2:common",\
    path: "temp.config.weights.success.take"\
  },\
  range: {min: 0, max: 25}\
} run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.success.take.fail",\
  "fallback": "§cAll weights must be an integer between 0 and 25 (inclusive)."\
}

##> fail.total
execute store result score .xp_weight.remove sgrave2.temp_var run data get storage sgrave2:common temp.config.weights.fail.remove
execute store result score .xp_weight.keep sgrave2.temp_var run data get storage sgrave2:common temp.config.weights.fail.keep

scoreboard players operation .xp_weight.total sgrave2.temp_var = .xp_weight.remove sgrave2.temp_var
scoreboard players operation .xp_weight.total sgrave2.temp_var += .xp_weight.keep sgrave2.temp_var

execute unless score .xp_weight.total sgrave2.temp_var matches 1.. run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.fail.total.fail.",\
  "fallback": "§cThe sum of weights must be an integer bigger than 0."\
}

##> success.total
execute store result score .xp_weight.remove sgrave2.temp_var run data get storage sgrave2:common temp.config.weights.success.remove
execute store result score .xp_weight.keep sgrave2.temp_var run data get storage sgrave2:common temp.config.weights.success.keep
execute store result score .xp_weight.take sgrave2.temp_var run data get storage sgrave2:common temp.config.weights.success.take

scoreboard players operation .xp_weight.total sgrave2.temp_var = .xp_weight.remove sgrave2.temp_var
scoreboard players operation .xp_weight.total sgrave2.temp_var += .xp_weight.keep sgrave2.temp_var
scoreboard players operation .xp_weight.total sgrave2.temp_var += .xp_weight.take sgrave2.temp_var

execute unless score .xp_weight.total sgrave2.temp_var matches 1.. run return run title @s actionbar {\
  "translate": "sgrave2.change_config_message.grave_generation_costs.no_item.xp.success.total.fail.",\
  "fallback": "§cThe sum of weights must be an integer bigger than 0."\
}

## Otherwise change values
data modify storage sgrave2:common configs.grave_generation_costs.with_item.xp set from storage sgrave2:common temp.config

## Update configs
function sgrave2:internal/config/register

## Refresh page
function sgrave2:internal/config/open_page/costs/grave_generation_costs