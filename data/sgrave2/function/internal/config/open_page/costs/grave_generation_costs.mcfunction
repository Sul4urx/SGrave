#<< config/open_page/costs

# Grave Generation Costs

##
tellraw @s ""

## Category: Grave Generation Costs
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config_category.grave_generation_costs",\
    "fallback": " §lGrave Generation Costs",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_category_description.grave_generation_costs",\
        "fallback": "The costs of generating a grave"\
      }\
    }\
  }\
]

##> With Items
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_generation_costs.with_item",\
    "fallback": "   With Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_generation_costs.with_item",\
        "fallback": "The costs of generating a grave for players who have items"\
      }\
    }\
  }\
]

##>> Items
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_generation_costs.with_item.items",\
    "fallback": "      Items: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_generation_costs.with_item.items",\
        "fallback": "A list of item predicates\nThe player must have an item that passes at least one of these predicates in their inventory to generate a grave.\n\n§bℹ Format: §7{value:[§6item§7, §6item§7, §8…§7]}\n§6item§f: An item predicate in format §7{items: [\"§6id§7\", '§6id§7', §8…§7], count: {min: §6min_count§7, max: §6max_count§7}}\n  §6id§f: The id of the item (e.g. minecraft:diamond)\n  §6min_count§r: The minimum stack size of the item (i.e. minimum number of items in a stack, e.g. 6)\n  §6max_count§r: The maximum stack size of the item (i.e. maximum number of items in a stack, e.g. 15)\n\n§a{value:[{}]}§7 → §fNo item predicates\n§a{value:[]}§7 → §fReset value to default\n\n§aThis is just a simplified format. To learn more about this format and fields §7components§a and §7predicates§a, go to the wiki section in SGrave's github page.\n\n§8Default: []"\
      }\
    }\
  },\
  {\
    "text": "§7[§b✎§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.grave_generation_costs.with_item.items",\
        "fallback": "Click to change the list.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.with_item.items",\
            "storage": "sgrave2:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function sgrave2:internal/config/change/costs/grave_generation_costs/with_item/items/change_list {value:[{…}]}"\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_generation_costs.with_item.xp",\
    "fallback": "      XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_generation_costs.with_item.xp",\
        "fallback": "The amount of XP levels required to generate a grave\n\
        §aℹ Read this carefully, it's a bit complicated!\n\
        \n\
        §bℹ Format: §7{value: {levels: §6N§7, weights: {fail: {remove: §6remove_weight§7, keep: §6keep_weight§7}, success: {remove: §6remove_weight§7, keep: §6keep_weight§7, take: §6take_weight§7}}}} \n\
        §fThe player must have at least §6N§f XP levels to generate a grave.\n\
        \n\
        §bℹ §fEach operation (keep, remove or take) is applied on §6W§f × §6(Player's total XP)§f, where §6W§f =  §6(Operation's weight)§f / §6(Sum of all operation weights)§f\nFor example if value is §7{levels: §64§7, weights: {fail: {remove: §62§7, keep: §63§7}, success: {remove: §66§7, keep: §60§7, take: §62§7}}}§f:\
        \n  \
          §7∙ §fIf a player fails to generate a grave: \n    \
            §7∙ §63§f/§e5§f of the player's XP will be kept inside their inventory.\n    \
            §7∙ §62§f/§e5§f of the player's XP will be removed.\n    \
            §7∙ §e5§f = §63§f + §62§f \n  \
          §7∙ §fIf a player successfully generates a grave:\n    \
            §7∙ §62§f/§e8§f of the player's XP will be taken by the grave.\n    \
            §7∙ §60§f/§e8§f (i.e. none) of the player's XP will be kept inside their inventory.\n    \
            §7∙ §66§f/§e8§f of the player's XP will be removed.\n    \
            §7∙ §e8§f = §62§f + §60§f + §66§f\n  \
          \n  \
        \n\
        §8Default: {levels: 0, weights: {fail: {remove: 1, keep: 2}, success: {remove: 1, keep: 0, take: 11}}}"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b✎§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.grave_generation_costs.with_item.xp",\
        "fallback": "Click to change the config.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.with_item.xp",\
            "storage": "sgrave2:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function sgrave2:internal/config/change/costs/grave_generation_costs/with_item/xp {value: {levels: ?, weights: {fail: {remove: ?, keep: ?}, success: {remove: ?, keep: ?, take: ?}}}}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_generation_costs.with_item.gamemodes",\
    "fallback": "      Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_generation_costs.with_item.gamemodes",\
        "fallback": "§a⬛ §7→§r Player in that game mode can generate a grave with items. Other costs will still apply.\n§c⬛ §7→§r Player in that game mode cannot generate a grave with items.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables generating the grave for players with items.\n\n§8Default: §aS§8, §aA§8, §cC"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.with_item.gamemodes.survival.text_value",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.grave_generation_costs.with_item.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/costs/grave_generation_costs/with_item/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.with_item.gamemodes.adventure.text_value",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.grave_generation_costs.with_item.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/costs/grave_generation_costs/with_item/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.with_item.gamemodes.creative.text_value",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.grave_generation_costs.with_item.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/costs/grave_generation_costs/with_item/gamemodes {gamemode:'creative'}"\
        }\
      }\
    ]\
  }\
]

##> Without Item
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_generation_costs.no_item",\
    "fallback": "   Without Item: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_generation_costs.no_item",\
        "fallback": "The costs of generating a grave for players who don't have an item in their inventory."\
      }\
    }\
  }\
]

##>> XP
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_generation_costs.no_item.xp",\
    "fallback": "      XP: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_generation_costs.no_item.xp",\
        "fallback": "The amount of XP levels required to generate a grave\n\
        §aℹ Read this carefully, it's a bit complicated!\n\
        \n\
        §bℹ Format: §7{value: {levels: §6N§7, weights: {fail: {remove: §6remove_weight§7, keep: §6keep_weight§7}, success: {remove: §6remove_weight§7, keep: §6keep_weight§7, take: §6take_weight§7}}}} \n\
        §fThe player must have at least §6N§f XP levels to generate a grave.\n\
        \n\
        §bℹ §fEach operation (keep, remove or take) is applied on §6W§f × §6(Player's total XP)§f, where §6W§f =  §6(Operation's weight)§f / §6(Sum of all operation weights)§f\nFor example if value is §7{levels: §64§7, weights: {fail: {remove: §62§7, keep: §63§7}, success: {remove: §66§7, keep: §60§7, take: §62§7}}}§f:\
        \n  \
          §7∙ §fIf a player fails to generate a grave: \n    \
            §7∙ §63§f/§e5§f of the player's XP will be kept inside their inventory.\n    \
            §7∙ §62§f/§e5§f of the player's XP will be removed.\n    \
            §7∙ §e5§f = §63§f + §62§f \n  \
          §7∙ §fIf a player successfully generates a grave:\n    \
            §7∙ §62§f/§e8§f of the player's XP will be taken by the grave.\n    \
            §7∙ §60§f/§e8§f (i.e. none) of the player's XP will be kept inside their inventory.\n    \
            §7∙ §66§f/§e8§f of the player's XP will be removed.\n    \
            §7∙ §e8§f = §62§f + §60§f + §66§f\n  \
          \n  \
        \n\
        §8Default: {levels: 3, weights: {fail: {remove: 1, keep: 2}, success: {remove: 1, keep: 0, take: 11}}}"\
      }\
    }\
  },\
  {\
    "translate": "§7[§b✎§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.grave_generation_costs.no_item.xp",\
        "fallback": "Click to change the config.\n\n§8Current value: %s",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.no_item.xp",\
            "storage": "sgrave2:common",\
            "color": "dark_gray"\
          }\
        ]\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function sgrave2:internal/config/change/costs/grave_generation_costs/no_item/xp {value: {levels: ?, weights: {fail: {remove: ?, keep: ?}, success: {remove: ?, keep: ?, take: ?}}}}"\
    }\
  }\
]

##>> Game Modes
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_generation_costs.no_item.gamemodes",\
    "fallback": "      Game Modes: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_generation_costs.no_item.gamemodes",\
        "fallback": "§a⬛ §7→§r Player in that game mode can generate a grave without having any items. Other costs will still apply.\n§c⬛ §7→§r Player in that game mode cannot generate a grave without items.\n\n§bS §7→§r Survival\n§bA §7→§r Adventure\n§bC §7→§r Creative\n\n§cS§7, §cA§7, §cC §7→§r Essentially disables generating the grave for players with items.\n\n§8Default: §aS§8, §aA§8, §cC"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.no_item.gamemodes.survival.text_value",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.grave_generation_costs.no_item.gamemodes.survival",\
            "fallback": "Click to toggle the config's value for survival game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/costs/grave_generation_costs/no_item/gamemodes {gamemode:'survival'}"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.no_item.gamemodes.adventure.text_value",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.grave_generation_costs.no_item.gamemodes.adventure",\
            "fallback": "Click to toggle the config's value for adventure game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/costs/grave_generation_costs/no_item/gamemodes {gamemode:'adventure'}"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.costs.grave_generation_costs.no_item.gamemodes.creative.text_value",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.grave_generation_costs.no_item.gamemodes.creative",\
            "fallback": "Click to toggle the config's value for creative game mode."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/costs/grave_generation_costs/no_item/gamemodes {gamemode:'creative'}"\
        }\
      }\
    ]\
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
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_go_back_description.costs",\
            "fallback": "Click to go back to page 'Costs'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/costs"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_refresh_sub_page_description",\
            "fallback": "Click to refresh this sub-page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/costs/grave_generation_costs"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""