#<< config/open_page/main

##
tellraw @s ""

## Category: Dropped Contents
tellraw @s {"translate": "sgrave2.config_category.dropped_contents","fallback": " §lDropped Contents:"}

##> Item Despawn Time
tellraw @s [\
  {\
    "translate": "sgrave2.config.despawn_time.item",\
    "fallback": "   Item Despawn Time: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.despawn_time.item",\
        "fallback": "The amount of time (in seconds) that it takes for items dropped from graves to despawn.\n§8Default: 2700"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.despawn_time.item.text_value",\
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
      "command": "/function sgrave2:internal/config/change/despawn_time/item {value:<value>}"\
    }\
  }\
]

##> XP Despawn Time
tellraw @s [\
  {\
    "translate": "sgrave2.config.despawn_time.xp",\
    "fallback": "   XP Despawn Time: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.despawn_time.xp",\
        "fallback": "The amount of time (in seconds) that it takes for XP orbs dropped from graves to despawn.\n§8Default: 1200"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.despawn_time.xp.text_value",\
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
      "command": "/function sgrave2:internal/config/change/despawn_time/xp {value:<value>}"\
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
            "translate": "sgrave2.config_refresh_sub_page_description",\
            "fallback": "Click to refresh this sub-page."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/dropped_contents"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""