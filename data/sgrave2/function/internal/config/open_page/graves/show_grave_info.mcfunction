#<< config/open_page/graves

##
tellraw @s ""

## Category: Show Grave Info
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config_category.show_grave_info",\
    "fallback": " §lShow Grave Info:",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_category_description.show_grave_info",\
        "fallback": "The contents of a grave that should be shown when a player wants to view the information of a grave. All values are true by default."\
      }\
    }\
  },\
  " ",\
  {\
    "text":"AO§l §r",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.n",\
        "fallback": "For active graves that belong to the reader (§lA§rctive §lO§rwner)"\
      }\
    }\
  },\
  {\
    "text":"BO§l §r",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.b",\
        "fallback": "For obstructed graves that belong to the reader (O§lb§rstructed §lO§rwner)"\
      }\
    }\
  },\
  {\
    "text":"AN§l §r",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.o",\
        "fallback": "For active graves that belong to other players (§lA§rctive §lN§ron-Owner)"\
      }\
    }\
  },\
  {\
    "text":"BN§l §r",\
    "hover_event": {\
      "action": "show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.bo",\
        "fallback": "For obstructed graves that belong to other players (O§lb§rstructed §lN§ron-Owner)"\
      }\
    }\
  }\
]

## ALL
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.all",\
    "fallback": "   ALL:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.all",\
        "fallback": "If false, grave info will not be shown at all. §7(ALL grave info)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.all",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/all"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.all",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/all"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.all",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/all"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.all",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/all"\
        }\
      }\
    ]\
  }\
]

## OWN
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.owner",\
    "fallback": "   OWN:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.owner",\
        "fallback": "Whether the owner of the grave should be shown. §7(OWNer)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.owner",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/owner"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.owner",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/owner"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.owner",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/owner"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.owner",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/owner"\
        }\
      }\
    ]\
  }\
]

## LOC
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.location_xyz",\
    "fallback": "   LOC:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.location_xyz",\
        "fallback": "Whether the coordinates of the grave should be shown. §7(LOcation Coordinates)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.location.xyz",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/location_xyz"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.location.xyz",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/location_xyz"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.location.xyz",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/location_xyz"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.location.xyz",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/location_xyz"\
        }\
      }\
    ]\
  }\
]

## LOD
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.location_dim",\
    "fallback": "   LOD:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.location_dim",\
        "fallback": "Whether the dimension the grave was generated in should be shown. §7(LOcation Dimension)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.location.dim",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/location_dim"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.location.dim",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/location_dim"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.location.dim",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/location_dim"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.location.dim",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/location_dim"\
        }\
      }\
    ]\
  }\
]

## DST
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.despawn_time",\
    "fallback": "   DST:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.despawn_time",\
        "fallback": "Whether the despawn time of the grave should be shown. §7(DeSpawn Time)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7| ❌ §7|%s§7| ❌§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.despawn_time",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/despawn_time"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.despawn_time",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/despawn_time"\
        }\
      }\
    ]\
  }\
]

## CRT
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.creation_time",\
    "fallback": "   CRT:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.creation_time",\
        "fallback": "Whether the in-game time the grave was generated at should be shown. §7(CReation Time)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.creation_time",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/creation_time"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.creation_time",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/creation_time"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.creation_time",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/creation_time"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.creation_time",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/creation_time"\
        }\
      }\
    ]\
  }\
]

## ITM
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.items",\
    "fallback": "   ITM:                 §l  §r",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.items",\
        "fallback": "Whether the items of the grave should be shown. §7(ITeMs)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.items",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/items"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.items",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/items"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.items",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/items"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.items",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/items"\
        }\
      }\
    ]\
  }\
]

## XPB
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.xp_before_death",\
    "fallback": "   XPB:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.xp_before_death",\
        "fallback": "Whether the experience the player had right before he or she died should be shown. §7(XP Before death)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.xp.before_death",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/xp_before_death"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.xp.before_death",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/xp_before_death"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.xp.before_death",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/xp_before_death"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.xp.before_death",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/xp_before_death"\
        }\
      }\
    ]\
  }\
]

## XPA
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.xp_after_death",\
    "fallback": "   XPA:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.xp_after_death",\
        "fallback": "Whether the experience that is stored in the grave should be shown. §7(XP After death)"\
      }\
    }\
  },\
  {\
    "translate": "§7[%s§7|%s§7|%s§7|%s§7]",\
    "with": [\
      {\
        "translate": "%s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.ao.xp.after_death",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.n",\
            "fallback": "Click to toggle the config's value for active graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/ao/xp_after_death"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.xp.after_death",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/xp_after_death"\
        }\
      },\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.an.xp.after_death",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.o",\
            "fallback": "Click to toggle the config's value for graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/an/xp_after_death"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.xp.after_death",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/xp_after_death"\
        }\
      }\
    ]\
  }\
]

## OBT
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.obstruction_type",\
    "fallback": "   OBT:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.obstruction_type",\
        "fallback": "Whether how the grave was obstructed should be shown (e.g. broken, opened, despawned). §7(OBstruction Type)"\
      }\
    }\
  },\
  {\
    "translate": "§7[❌ §7|%s§7| ❌ §7|%s§7]",\
    "with": [\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.obstruction_type",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/obstruction_type"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.obstruction_type",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/obstruction_type"\
        }\
      }\
    ]\
  }\
]

## OBR
tellraw @s [\
  "",\
  {\
    "translate": "sgrave2.config.show_grave_info.obstructor",\
    "fallback": "   OBR:                   ",\
    "hover_event": {\
      "action":"show_text",\
      "value": {\
        "translate": "sgrave2.config_description.show_grave_info.obstructor",\
        "fallback": "Whether the player who broke the grave should be shown. §7(OBstructoR)"\
      }\
    }\
  },\
  {\
    "translate": "§7[❌ §7|%s§7| ❌ §7|%s§7]",\
    "with": [\
      {\
        "translate": " %s ",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bo.obstructor",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.b",\
            "fallback": "Click to toggle the config's value for broken graves."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bo/obstructor"\
        }\
      },\
      {\
        "translate": " %s",\
        "with": [\
          {\
            "nbt": "configs.text.graves.show_grave_info.bn.obstructor",\
            "storage": "sgrave2:common"\
          }\
        ],\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "translate": "sgrave2.config_change_description.toggle.show_grave_info.bo",\
            "fallback": "Click to toggle the config's value for broken graves that belong to other players."\
          }\
        },\
        "click_event": {\
          "action": "run_command",\
          "command": "/function sgrave2:internal/config/toggle/graves/show_grave_info/bn/obstructor"\
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
          "command": "/function sgrave2:internal/config/open_page/graves/show_grave_info"\
        }\
      }\
    ]\
  }\
]

tellraw @s ""