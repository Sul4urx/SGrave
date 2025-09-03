#<< config/open_page/costs/grave_generation_costs

# ICD Properties

## Insert a newline before the menu
tellraw @s ""

## Category: XP Distribution
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config_category.xp_distribution.",\
    "fallback": " Graves §7/ §r§lXP Distribution:"\
  },\
  {\
    "text": " §bℹ",\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_category_description.xp_distribution",\
        "fallback": "Each operation (remove, keep, take) is applied on a portion of player's XP. Each operation has something called weight, which determines this portion.\n\nOperations with a higher weight are applied on a higher portion of the player's XP.\n\nThe formula for the portion is:\n§6(Operation's weight) / (Total weight of all operations)"\
      }\
    }\
  }\
]

## Grave Generation Fail
tellraw @s [\
  {\
    "translate": "sgrave2.config.xp_distribution.grave_generation_fail",\
    "fallback": "   Grave Generation Fail: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config.xp_distribution.grave_generation_fail",\
        "fallback": "The XP distribution if the player failed to generate a grave (i.e. didn't have nessecary requirements to generate a grave)."\
      }\
    }\
  }\
]

##> Remove
tellraw @s [\
  {\
    "translate": "sgrave2.config.xp_distribution.grave_generation_fail.remove",\
    "fallback": "     Remove: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config.xp_distribution.grave_generation_fail.remove",\
        "fallback": "The weight of the 'remove' operation, which fully removes the player's XP.\n§8Default: 1"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_fail.remove",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/graves/xp_distribution/grave_generation_fail/remove {value: ?}"\
    }\
  }\
]

##> Keep
tellraw @s [\
  {\
    "translate": "sgrave2.config.xp_distribution.grave_generation_fail.keep",\
    "fallback": "     Keep: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_description.xp_distribution.grave_generation_fail.keep",\
        "fallback": "The weight of the 'keep' operation, which keeps the XP in the player's inventory.\n§8Default: 2"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_fail.keep",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/graves/xp_distribution/grave_generation_fail/keep {value: ?}"\
    }\
  }\
]

##> Total
tellraw @s [\
  {\
    "translate": "sgrave2.config_info.xp_distribution.grave_generation_fail.total",\
    "fallback": "     §eTotal: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_info_description.xp_distribution.grave_generation_fail.total",\
        "fallback": "The total weight of all operations.\n\n§bℹ The total weight must not become 0. If it does, all operations' weights will eventually reset."\
      }\
    }\
  },\
  {\
    "translate": "%s",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_fail.total",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_info_number_description",\
        "fallback": "This isn't a config you can change, this is just an info."\
      }\
    }\
  }\
]

## Grave Generation Success
tellraw @s [\
  {\
    "translate": "sgrave2.config.xp_distribution.grave_generation_success",\
    "fallback": "   Grave Generation Success ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config.xp_distribution.grave_generation_success",\
        "fallback": "The XP distribution if the player successfully generated a grave (i.e. had nessecary requirements to generate a grave)."\
      }\
    }\
  }\
]

##> Remove
tellraw @s [\
  {\
    "translate": "sgrave2.config.xp_distribution.grave_generation_success.remove",\
    "fallback": "     Remove: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config.xp_distribution.grave_generation_success.remove",\
        "fallback": "The weight of the 'remove' operation, which fully removes the player's XP.\n§8Default: 1"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_success.remove",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/graves/xp_distribution/grave_generation_success/remove {value: ?}"\
    }\
  }\
]

##> Keep
tellraw @s [\
  {\
    "translate": "sgrave2.config.xp_distribution.grave_generation_success.keep",\
    "fallback": "     Keep: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config.xp_distribution.grave_generation_success.keep",\
        "fallback": "The weight of the 'keep' operation, which keeps the XP in the player's inventory.\n§8Default: 0"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_success.keep",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/graves/xp_distribution/grave_generation_success/keep {value: ?}"\
    }\
  }\
]

##> Take
tellraw @s [\
  {\
    "translate": "sgrave2.config.xp_distribution.grave_generation_success.take",\
    "fallback": "     Take: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config.xp_distribution.grave_generation_success.take",\
        "fallback": "The weight of the 'take' operation, which gives the XP to the grave.\n§8Default: 11"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_success.take",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §6?§r with the value you want to change the config to."\
      }\
    },\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function sgrave2:internal/config/change/graves/xp_distribution/grave_generation_success/take {value: ?}"\
    }\
  }\
]

##> Total
tellraw @s [\
  {\
    "translate": "sgrave2.config_info.xp_distribution.grave_generation_success.total",\
    "fallback": "     §eTotal: ",\
    "hoverEvent": {\
      "action":"show_text",\
      "contents": {\
        "translate": "sgrave2.config_info_description.xp_distribution.grave_generation_success.total",\
        "fallback": "The total weight of all operations.\n\n§bℹ The total weight must not become 0. If it does, all operations' weights will eventually reset."\
      }\
    }\
  },\
  {\
    "translate": "%s",\
    "with": [\
      {\
        "nbt": "configs.text.graves.xp_distribution.grave_generation_success.total",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "sgrave2.config_info_number_description",\
        "fallback": "This isn't a config you can change, this is just an info."\
      }\
    }\
  }\
]

##
tellraw @s ""

## Config page menu
tellraw @s [\
  {\
    "translate": "§7[%s§7|%s§7]",\
    "with": [\
      {\
        "text": "§c< Back ",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_go_back_description.graves",\
            "fallback": "Click to go back to page 'Graves'."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/graves"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hoverEvent": {\
          "action": "show_text",\
          "contents": {\
            "translate": "sgrave2.config_refresh_sub_page_description",\
            "fallback": "Click to refresh this sub-page."\
          }\
        },\
        "clickEvent": {\
          "action": "run_command",\
          "value": "/function sgrave2:internal/config/open_page/graves/xp_distribution"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""