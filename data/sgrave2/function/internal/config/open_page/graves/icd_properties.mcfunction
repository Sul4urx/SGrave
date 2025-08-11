#<< config/open_page/graves

# ICD Properties

## Insert a newline before the menu
tellraw @s ""

## Category: ICD Properties
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config_category.icd",\
    "fallback": " §lICD Properties:",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_category_description.icd",\
        "fallback": "The properties of the ICD feature."\
      }\
    }\
  }\
]

## Activate For
tellraw @s [\
  {\
    "translate": "sgrave2.config.icd.activate_for",\
    "fallback": "   Activate for: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.icd.activate_for",\
        "fallback": "The players whom ICD should be activated for\n§cN §7→§r§fNo one §7(Disable ICD)\n§eO §7→§f The owner\n§aE §7→§r Anyone\n§bℹ This doesn't change who can take items from the grave. To change that, use other configs.\n§8Default: N"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.icd.activate_for.text_value",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
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
      "command": "/function sgrave2:internal/config/toggle/icd/activate_for"\
    }\
  }\
]

## Item Cycle Cooldown
tellraw @s [\
  {\
    "translate": "sgrave2.config.icd.item_cycle_cooldown",\
    "fallback": "   Item Cycle Cooldown: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.icd.item_cycle_cooldown",\
        "fallback": "The amount of time (in ticks, i.e. 1/20 second) it takes for ICD to cycle through the next item.\n§8Default: 20 ticks (1 second)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.icd.item_cycle_cooldown.text_value",\
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
      "command": "/function sgrave2:internal/config/change/icd/item_cycle_cooldown {value:<value>}"\
    }\
  }\
]

## Requires Sneaking
tellraw @s [\
  {\
    "translate": "sgrave2.config.icd.requires_sneaking",\
    "fallback": "   Requires Sneaking: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.icd.requires_sneaking",\
        "fallback": "§a✔ §7→§r Sneaking is required in order to activate ICD\n§c❌ §7→§r Getting near the grave is enough to activate ICD.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.icd.requires_sneaking.text_value",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
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
      "command": "/function sgrave2:internal/config/toggle/icd/requires_sneaking"\
    }\
  }\
]

## Switch Text Display
tellraw @s [\
  {\
    "translate": "sgrave2.config.icd.switch_text_display",\
    "fallback": "   Switch Text Display: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.icd.switch_text_display",\
        "fallback": "§a✔ §7→§r The text display will change to show the stack count and ID of the item §7(Recommended)§r.\n§c❌ §7→§r The text display will remain the same.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.icd.switch_text_display.text_value",\
        "storage": "sgrave2:common",\
        "color": "aqua"\
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
      "command": "/function sgrave2:internal/config/toggle/icd/switch_text_display"\
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
            "translate": "sgrave2.config_go_back_description.graves",\
            "fallback": "Click to go back to page 'Graves'.",\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/open_page/graves"\
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
          "command": "/function sgrave2:internal/config/open_page/graves/icd_properties"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""