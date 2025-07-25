## Prevent loop
scoreboard players set @s sgrave2.help 0

## Menu
tellraw @s ""

tellraw @s {\
  "translate": "sgrave2.help_menu",\
  "fallback": "§l§bS§l§6Grave§r §7help menu\n§fIf you found a bug, please try to replicate the bug (i.e. see how the bug happens). Either way, report it in §7[%s§7]§f.\n\nIf you have a question, please read the FAQ first, and if you didn't find your question, ask it in §7[%s§7]§f.\n\n§bFAQ: §7<%s§7|%s§7>",\
  "with": [\
    {\
      "translate": "sgrave2.help.issues",\
      "fallback": "§cIssues",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.help_menu_button_description.code",\
          "fallback": "Click to report a bug or suggest a new feature."\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://github.com/sul4urx/sgrave/issues"\
      }\
    },\
    {\
      "translate": "sgrave2.help.discord",\
      "fallback": "§9Discord",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.help_menu_button_description.discord",\
          "fallback": "Click to join my discord server!"\
        }\
      },\
      "click_event": {\
        "action": "open_url",\
        "url": "https://discord.gg/7W5mC7Yeaq"\
      }\
    },\
    \
    {\
      "text": "§b1 ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.help_menu.faq.1",\
          "fallback": "§bWhy does the player head part of the grave show a default skin and is not the same as mine?\n§fYou must have a good internet connection and must be using a non-cracked Minecraft launcher for the head to show your skin. If you still can't get it to work, then it is probably a bug.\n\n§bIt says you must have the nessecary requirements to open or break/remotely open this grave. What are the requirements?\n§fBy default, there are no requirements to open or break graves and is impossible to remotely open graves. Take a look at the Costs config. If there are no predicates or if the predicates should have been matched, then this is a bug."\
        }\
      },\
    },\
    {\
      "text": " §b2",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.help_menu.faq.1",\
          "fallback": "§bHow do I change a config?\n§fUse this command: §7/function sgrave2:run/config\n§fKeep in mind that anything inclosed in §7[§bsquare brackets§7]§f can be clicked on.\n\n§bGrave does not generate, What is going on?\n§fBy default, Creative mode players cannot generate graves. Consider checking Grave Generation Costs config. If there are no predicates or if the predicates should have been matched, then this is probably a bug.\n\n§bI asked for help, but Sul4ur is taking so long to reply.\n§fI don't always check discord, but I usually respond within 24 hours.\nKeep in mind that you §lmust ping me§r§f with @Sul4ur, otherwise it's gonna take much longer.\nIf you pinged me but I didn't respond within 24 hours, you can ping me again."\
        }\
      },\
    }\
  ]\
}

tellraw @s ""