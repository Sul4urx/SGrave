## Prevent loop
scoreboard players set @s sgrave2.info 0

## Menu
tellraw @s ""

tellraw @s {\
  "translate": "sgrave2.info",\
  "fallback": "§l§bS§l§6Grave§r §fversion %s §8| §fMade By §bSul4ur\n§6ℹ This data pack is heavily in beta. Expect bugs!\n§fA very sophisticated grave data pack with many features and a lot of customizability\n\n§7[%s§7| %s §7| %s §7| %s §7| %s§7]",\
  "with": [\
    "§72a0-beta-2",\
    {\
      "translate": "sgrave2.info.help",\
      "fallback": "§bHelp (In-Game) ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.info_menu_button_description.help",\
          "fallback": "Click to open the in-game help menu."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger sgrave2.help"\
      }\
    },\
    {\
      "translate": "sgrave2.info.doc",\
      "fallback": "§aDocumentation",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.info_menu_button_description.doc",\
          "fallback": "Click to open the SGrave documentation."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://modrinth.com/datapack/sgrave"\
      }\
    },\
    {\
      "translate": "sgrave2.info.doc",\
      "fallback": "§7Wiki",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.info_menu_button_description.doc",\
          "fallback": "Click to open the SGrave wiki.\nThe wiki is similar to the documentation, but it is for advanced features of SGrave."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://github.com/sul4urx/sgrave/wiki"\
      }\
    },\
    {\
      "translate": "sgrave2.info.issues",\
      "fallback": "§cIssues",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.info_menu_button_description.code",\
          "fallback": "Click to report a bug or suggest a new feature."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://github.com/sul4urx/sgrave/issues"\
      }\
    },\
    {\
      "translate": "sgrave2.info.code",\
      "fallback": "§eCode",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.info_menu_button_description.code",\
          "fallback": "Click to view the SGrave source code."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://github.com/sul4urx/sgrave"\
      }\
    }\
  ]\
}

tellraw @s ""