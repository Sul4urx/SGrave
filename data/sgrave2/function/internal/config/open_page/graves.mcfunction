#<< config/open_page/main

##
tellraw @s ""

## Category: Graves
tellraw @s {"translate": "sgrave2.config_category.graves","fallback": " §lGraves:"}

##> Glowing graves
tellraw @s [\
  {\
    "translate": "sgrave2.config.glowing_graves",\
    "fallback": "   Glowing Graves: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.glowing_graves",\
        "fallback": "Whether graves have a glow outline, as if they had the glowing status effect.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.glowing_graves.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/glowing_graves"\
    }\
  }\
]

##> Grave Despawn Time
tellraw @s [\
  {\
    "translate": "sgrave2.config.despawn_time.grave",\
    "fallback": "   Grave Despawn Time: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.despawn_time.grave",\
        "fallback": "The amount of time (in seconds) that it takes for a grave to despawn.\n§8Default: 5400"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.despawn_time.text_value",\
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
      "command": "/function sgrave2:internal/config/change/despawn_time/grave {value:<value>}"\
    }\
  }\
]

##> Grave Placement Restrictions
tellraw @s [\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions",\
    "fallback": "   Grave Placement Restrictions: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions",\
        "fallback": "The blocks that a grave cannot generate on or generate in."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.grave_placement_restrictions",\
        "fallback": "Click to open the \"§lGrave Placement Restrictions§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/grave_placement_restrictions"\
    }\
  }\
]

##> ICD Properties
tellraw @s [\
  {\
    "translate": "sgrave2.config.icd",\
    "fallback": "   ICD Properties: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.icd",\
        "fallback": "The properties of the ICD feature."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.icd",\
        "fallback": "Click to open the \"§lICD Properties§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/icd_properties"\
    }\
  }\
]

##> Show Grave Info
tellraw @s [\
  {\
    "translate": "sgrave2.config.show_grave_info",\
    "fallback": "   Show Grave Info: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info",\
        "fallback": "The contents of a grave that should be shown when a player wants to view the information of a grave."\
      }\
    }\
  },\
  {\
    "translate": "§7[§b>§7]",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_sub_page_open_description.show_grave_info",\
        "fallback": "Click to open the \"§lShow Grave Info§r\" sub-page."\
      }\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "/function sgrave2:internal/config/open_page/graves/show_grave_info"\
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
          "command": "/function sgrave2:internal/config/open_page/graves"\
        }\
      }\
    ]\
  }\
]

##
tellraw @s ""