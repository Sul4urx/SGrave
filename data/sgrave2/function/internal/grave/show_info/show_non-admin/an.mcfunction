#<< grave/show_info/check_conditions

# Show grave info for active graves not belonging to the player

## Prepare to show despawn time
## by converting from ticks to seconds, minutes and hours
execute store result score .despawn_time sgrave2.temp_var run data get storage sgrave2:common graves[-1].data.despawn_time
scoreboard players operation .despawn_time.seconds sgrave2.temp_var = .despawn_time sgrave2.temp_var
scoreboard players operation .despawn_time.seconds sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.minutes sgrave2.temp_var = .despawn_time sgrave2.temp_var
scoreboard players operation .despawn_time.minutes sgrave2.temp_var /= (60) sgrave2.var
scoreboard players operation .despawn_time.minutes sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.hours sgrave2.temp_var = .despawn_time sgrave2.temp_var
scoreboard players operation .despawn_time.hours sgrave2.temp_var /= (3600) sgrave2.var
scoreboard players operation .despawn_time.minutes sgrave2.temp_var %= (60) sgrave2.var

scoreboard players operation .despawn_time.hours sgrave2.temp_var = .despawn_time sgrave2.temp_var
scoreboard players operation .despawn_time.hours sgrave2.temp_var /= (3600) sgrave2.var

## Title
tellraw @s [{"translate": "sgrave2.grave_info.title", "fallback": "\nGrave §6#%s info", "with": [{"nbt": "graves[-1].data.id", "storage": "sgrave2:common", "color": "gold"}]}]

## Owner
execute unless score (graves/show_grave_info/an/owner) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.owner", "fallback": "  §bOwner: %s", "with": [{"nbt": "graves[-1].data.owner.name", "color": "green", "storage": "sgrave2:common"}]}

## Location
execute unless score (graves/show_grave_info/an/location.xyz) sgrave2.config matches 0 unless score (graves/show_grave_info/an/location.dim) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.location.all", "fallback": "  §bLocation: %s §7(%s§7)", "with": [{"nbt": "graves[-1].data.pos_integer[]", "color": "gold", "storage": "sgrave2:common", "separator": "§7, "}, {"nbt": "graves[-1].data.dimension.name", "color": "green", "storage": "sgrave2:common"}]}

execute unless score (graves/show_grave_info/an/location.xyz) sgrave2.config matches 0 if score (graves/show_grave_info/an/location.dim) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.location.xyz", "fallback": "  §bLocation: %s", "with": [{"nbt": "graves[-1].data.pos_integer[]", "color": "gold", "storage": "sgrave2:common", "separator": "§7, "}]}

execute if score (graves/show_grave_info/an/location.xyz) sgrave2.config matches 0 unless score (graves/show_grave_info/an/location.dim) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.location.dim", "fallback": "  §bDimension: %s", "with": [{"nbt": "graves[-1].data.dimension.name", "color": "green", "storage": "sgrave2:common"}]}

## XP
execute unless score (graves/show_grave_info/an/xp/after_death) sgrave2.config matches 0 unless score (graves/show_grave_info/an/xp/before_death) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.xp", "fallback": "  §bExperience:\n    §eBefore death: %s levels §7+ %s points\n    §eAfter death: %s levels §7+ %s points", "with": [{"nbt": "graves[-1].data.xp_before_death.levels", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].data.xp_before_death.points", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].contents.xp.levels", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].contents.xp.points", "color": "gold", "storage": "sgrave2:common"}]}

##> XP Before death
execute if score (graves/show_grave_info/an/xp/after_death) sgrave2.config matches 0 unless score (graves/show_grave_info/an/xp/before_death) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.xp", "fallback": "  §bXP (Before death): %s levels §7+ %s points", "with": [{"nbt": "graves[-1].contents.xp_before_death.levels", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].contents.xp_before_death.points", "color": "gold", "storage": "sgrave2:common"}]}

##> XP after death
execute unless score (graves/show_grave_info/an/xp/after_death) sgrave2.config matches 0 if score (graves/show_grave_info/an/xp/before_death) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.xp", "fallback": "  §bXP (After death): %s levels §7+ %s points", "with": [{"nbt": "graves[-1].contents.xp.levels", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].contents.xp.points", "color": "gold", "storage": "sgrave2:common"}]}

## Despawn time
execute unless score (graves/show_grave_info/an/despawn_time) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.despawn_time", "fallback": "  §bDespawn time: %s hours§7, %s minutes§7, %s seconds", "with": [{"score": {"name": ".despawn_time.hours", "objective": "sgrave2.temp_var"}, "color": "gold"}, {"score": {"name": ".despawn_time.minutes", "objective": "sgrave2.temp_var"}, "color": "gold"}, {"score": {"name": ".despawn_time.seconds", "objective": "sgrave2.temp_var"}, "color": "gold"}]}

## Creation time
execute unless score (graves/show_grave_info/an/creation_time) sgrave2.config matches 0 run tellraw @s {"translate": "sgrave2.grave_info.creation_time", "fallback": "  §bCreation time: §rDay %s§7, %s hours §7: %s minutes", "with": [{"nbt": "graves[-1].data.creation_time.day", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].data.creation_time.hours", "color": "gold", "storage": "sgrave2:common"}, {"nbt": "graves[-1].data.creation_time.minutes", "color": "gold", "storage": "sgrave2:common"}]}

## Items
execute unless score (graves/show_grave_info/an/items) sgrave2.config matches 0 run function sgrave2:internal/grave/show_info/show_items with storage sgrave2:common graves[-1].data

##
tellraw @s ""

## Status
tellraw @s {"translate": "sgrave2.grave_info.status.active", "fallback": "  §bStatus: §aActive"}


##
tellraw @s ""

## Menu
$execute unless data storage sgrave2:common graves[-1].data.status{obstructed:1b} run tellraw @s {\
  "translate": "sgrave2.grave_info.menu",\
  "fallback": "§7[%s§7|%s§7|%s§7]",\
  "with": [\
    {\
      "translate": "sgrave2.grave_info.menu.back",\
      "fallback": "§b< ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.back",\
          "fallback": "Click to view info about previous grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger sgrave2.show_grave_info.view_previous set $(id)"\
      }\
    },\
    {\
      "translate": "sgrave2.grave_info.menu.open",\
      "fallback": " §bOpen ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.open",\
          "fallback": "Click to remotely open this grave."\
        }\
      },\
      "click_event": {\
        "action": "suggest_command",\
        "command": "/trigger sgrave2.remote_open_grave set $(id)"\
      }\
    },\
    {\
      "translate": "sgrave2.grave_info.menu.back",\
      "fallback": " §b>",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.back",\
          "fallback": "Click to view info about next grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger sgrave2.show_grave_info.view_next set $(id)"\
      }\
    }\
  ]\
}
$execute if data storage sgrave2:common graves[-1].data.status{obstructed:1b} run tellraw @s {\
  "translate": "sgrave2.grave_info.menu_no_open",\
  "fallback": "§7[%s§7| Open |%s§7]",\
  "with": [\
    {\
      "translate": "sgrave2.grave_info.menu.back",\
      "fallback": "§b< ",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.back",\
          "fallback": "Click to view info about previous grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger sgrave2.show_grave_info.view_previous set $(id)"\
      }\
    },\
    {\
      "translate": "sgrave2.grave_info.menu.back",\
      "fallback": " §b>",\
      "hover_event": {\
        "action": "show_text",\
        "value": {\
          "translate": "sgrave2.grave_info.menu_description.back",\
          "fallback": "Click to view info about next grave."\
        }\
      },\
      "click_event": {\
        "action": "run_command",\
        "command": "/trigger sgrave2.show_grave_info.view_next set $(id)"\
      }\
    }\
  ]\
}

##
tellraw @s ""