#<< config/open_page/graves

# Grave Placement Restrictions

##
tellraw @s ""

## Category: Grave Placement Restrictions
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config_category.grave_placement_restrictions",\
    "fallback": " §lGrave Placement Restrictions:",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_category_description.grave_placement_restrictions",\
        "fallback": "The blocks that a grave cannot generate on or generate in."\
      }\
    }\
  }\
]

## Air
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.on_air",\
    "fallback": "   On Air: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.on_air",\
        "fallback": "§a❌ §7→§r Graves can generate on air.\n§c✔ §7→§r Graves will sink to the ground.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.on_air.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/on_air"\
    }\
  }\
]

## Water
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.on_water",\
    "fallback": "   On Water: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.on_water",\
        "fallback": "§a❌ §7→§r Graves can generate on water.\n§c✔ §7→§r Graves will sink down the water.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.on_water.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/on_water"\
    }\
  },\
  {\
    "translate": "sgrave2.space_between_configs.graves.grave_placement_restrictions.on_water..in_water",\
    "fallback": "                  §l   §r" \
  },\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.in_water",\
    "fallback": "In Water: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.in_water",\
        "fallback": "§a❌ §7→§r Graves can generate in water.\n§c✔ §7→§r Graves will attempt to generate on top of the water.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.in_water.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/in_water"\
    }\
  }\
]

## Lava
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.on_lava",\
    "fallback": "   On Lava: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.on_lava",\
        "fallback": "§a❌ §7→§r Graves can generate on lava.\n§c✔ §7→§r Graves will sink down the lava.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.on_lava.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/on_lava"\
    }\
  },\
  {\
    "translate": "sgrave2.space_between_configs.graves.grave_placement_restrictions.on_lava..in_lava",\
    "fallback": "                   §l   §r" \
  },\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.in_lava",\
    "fallback": "In Lava: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.in_lava",\
        "fallback": "§a❌ §7→§r Graves can generate in lava.\n§c✔ §7→§r Graves will attempt to generate on top of the lava.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.in_lava.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/in_lava"\
    }\
  }\
]

## (Non-)Solid Blocks
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.on_non_solid_blocks",\
    "fallback": "   On Non-Solid Blocks: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.on_non_solid_blocks",\
        "fallback": "§a❌ §7→§r Graves can generate on non-solid blocks.\n§c✔ §7→§r Graves will attempt to generate inside the non-solid block.\n§bℹ All modded blocks are treated as fully solid blocks, regardless of whether they're actually solid or not.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.on_non_solid_blocks.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/on_non_solid_blocks"\
    }\
  },\
  {\
    "translate": "sgrave2.space_between_configs.graves.grave_placement_restrictions.on_non_solid_blocks..in_solid_blocks",\
    "fallback": "        " \
  },\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.in_solid_blocks",\
    "fallback": "In Solid Blocks: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.in_solid_blocks",\
        "fallback": "§a❌ §7→§r Graves can generate in solid blocks.\n§c✔ §7→§r Graves will attempt to generate on top of the solid block.\n§bℹ All modded blocks are treated as fully solid blocks, regardless of whether they're actually solid or not.\n§8Default: ❌"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.in_solid_blocks.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/in_solid_blocks"\
    }\
  }\
]

## Build Height Limit
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.above_build_height_limit",\
    "fallback": "   Above Build height limit: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.above_build_height_limit",\
        "fallback": "§a❌ §7→§r Graves can generate above the maximum build height limit §7(which is Y=319 for Overworld, Y=255 for The Nether and The End)§r.\n§c✔ §7→§r Graves will attempt to generate one block above the maximum build height limit.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.above_build_height_limit.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/above_build_height_limit"\
    }\
  },\
  {\
    "translate": "sgrave2.space_between_configs.graves.grave_placement_restrictions.above_build_height_limit..below_build_height_limit",\
    "fallback": " §l   §r" \
  },\
  {\
    "translate": "sgrave2.config.grave_placement_restrictions.below_build_height_limit",\
    "fallback": "Below Build Height Limit: ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.grave_placement_restrictions.below_build_height_limit",\
        "fallback": "§a❌ §7→§r Graves can generate below the minimum build height limit §7(which is Y=-64 for Overworld, Y=0 for The Nether and The End)§r.\n§c✔ §7→§r Graves will attempt to generate one block below the minimum build height limit.\n§bℹ Be careful! Graves cannot survive 64 blocks below the minimum build height limit.\n§8Default: ✔"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7]",\
    "with": [\
      {\
        "nbt": "configs.graves.grave_placement_restrictions.below_build_height_limit.text_value",\
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
      "command": "/function sgrave2:internal/config/toggle/grave_placement_restrictions/below_build_height_limit"\
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
          "command": "/function sgrave2:internal/config/open_page/graves/grave_placement_restrictions"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""