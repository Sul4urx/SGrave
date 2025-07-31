#<< config/open_page/main

##
tellraw @s ""

## Category: Graves
tellraw @s {"translate": "sgrave2.config_category.general","fallback": " §lGeneral:"}

##> Change Game Rules
tellraw @s [\
  {\
    "translate": "sgrave2.config.change_gamerules",\
    "fallback": "   Change Game Rules: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.change_gamerules",\
        "fallback": "§a✔ §7→§r (Recommended) keepInventory and doImmediateRespawn game rules are autmatically set to true and false, respectively. keepInventory won't be affected if Mod Compability Mode is set to true.\n§c❌ §7→§r keepInventory and doImmediateRespawn game rules are not affected by SGrave.\n\n§bℹ SGrave won't work properly if at least one of the gamerules are not set to their approprtiate values.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.change_gamerules.text_value",\
        "storage": "sgrave2:common" \
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/toggle/change_gamerules"\
    }\
  }\
]

##> Mod Compability Mode
tellraw @s [\
  {\
    "translate": "sgrave2.config.mod_compability_mode",\
    "fallback": "   §3Mod Compability Mode: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.mod_compability_mode",\
        "fallback": "§a✔ §7→§r keepInventory game rule is set to false (can be rechanged later) and Graves collect dropped items\n§c❌ §7→§r KeepInventory is set to true (can't be rechanged if Change Game Rules config is set to true) and Graves take items frome player's inventory.\n\n§bPros:\n§f  §7•§f Better compability (especially with mods that add custom slots)\n§cCons:\n  §7•§f Increased risk of item loss\n  §7•§f Blacklist Slots and Blacklist Items configs and Items sub-config in Grave Generation Costs / With Items won't work.\n  §7•§f Items won't be put in appropriate slots and instead dropped.\n\n§3ℹ This is an experimental config!\n\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.mod_compability_mode.text_value",\
        "storage": "sgrave2:common" \
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.toggle",\
        "fallback": "Click to toggle the config's value."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/toggle/mod_compability_mode"\
    }\
  },\
]

##>> Item Collection Distance
tellraw @s [\
  {\
    "translate": "sgrave2.config.mod_compability_mode.item_collection_distance",\
    "fallback": "     Item Collection Distance: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.mod_compability_mode.item_collection_distance",\
        "fallback": "Items that are within N blocks from player's death point will be collected by the grave. N is the value.\nThe bigger the value, the lower the risk of losing items, but the more likely to collect additional dropped items.\n§8Default: 4"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.mod_compability_mode.item_collection_distance.text_value",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
      }\
    ],\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_change_description.replace_value",\
        "fallback": "Click to change the config's value. \nReplace §o<value> §rwith the value you want to change the config to."\
      }\
    },\
    "click_event": {\
      "action": "suggest_command",\
      "command": "/function sgrave2:internal/config/change/mod_compability_mode/item_collection_distance {value:<value>}"\
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
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_go_back_description.main",\
            "fallback": "Click to go back to the main page.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/main"\
        }\
      },\
      {\
        "text": " §b🔃 Refresh",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_refresh_page_description",\
            "fallback": "Click to refresh this page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/general"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""