#<< grave/generate

## Tell grave mini-info

## Location and dimension
execute if score <show_grave_info--an--location.xyz> sgrave2.config matches 1 if score <show_grave_info--an--location.dim> sgrave2.config matches 1 run tellraw @a[tag=!sgrave2.temp.grave.owner] {\
  "translate": "\n§c☠ %s §6#%s §7—§r %s §7—§r %s\n",\
  "with": [\
    {\
      "nbt": "item.components.minecraft:custom_data.sgrave2:common.owner.name",\
      "entity": "@n[tag=sgrave2.temp.grave.base]",\
      "color": "red"\
    },\
    {\
      "nbt": "item.components.minecraft:custom_data.sgrave2:common.gid",\
      "entity": "@n[tag=sgrave2.temp.grave.base]",\
      "color": "gold"\
    },\
    {\
      "nbt": "graves[-1].data.pos_integer[]",\
      "storage": "sgrave2:common",\
      "color": "gold",\
      "separator": "§7, "\
    },\
    {\
      "nbt": "graves[-1].data.dimension.name",\
      "storage": "sgrave2:common",\
      "color": "green"\
    }\
  ]\
}

## Location only
execute if score <show_grave_info--an--location.xyz> sgrave2.config matches 1 unless score <show_grave_info--an--location.dim> sgrave2.config matches 1 run tellraw @a[tag=!sgrave2.temp.grave.owner] {\
  "translate": "\n§c☠ %s §6#%s §7—§r %s\n",\
  "with": [\
    {\
      "nbt": "item.components.minecraft:custom_data.sgrave2:common.owner.name",\
      "entity": "@n[tag=sgrave2.temp.grave.base]",\
      "color": "red"\
    },\
    {\
      "nbt": "item.components.minecraft:custom_data.sgrave2:common.gid",\
      "entity": "@n[tag=sgrave2.temp.grave.base]",\
      "color": "gold"\
    },\
    {\
      "nbt": "graves[-1].data.pos_integer[]",\
      "storage": "sgrave2:common",\
      "color": "gold",\
      "separator": "§7, "\
    }\
  ]\
}

## Dimension only
execute unless score <show_grave_info--an--location.xyz> sgrave2.config matches 1 if score <show_grave_info--an--location.dim> sgrave2.config matches 1 run tellraw @a[tag=!sgrave2.temp.grave.owner] {\
  "translate": "\n§c☠ %s §6#%s §7—§r %s\n",\
  "with": [\
    {\
      "nbt": "item.components.minecraft:custom_data.sgrave2:common.owner.name",\
      "entity": "@n[tag=sgrave2.temp.grave.base]",\
      "color": "red"\
    },\
    {\
      "nbt": "item.components.minecraft:custom_data.sgrave2:common.gid",\
      "entity": "@n[tag=sgrave2.temp.grave.base]",\
      "color": "gold"\
    },\
    {\
      "nbt": "graves[-1].data.dimension.name",\
      "storage": "sgrave2:common",\
      "color": "green"\
    }\
  ]\
}

## No location or dimension
execute unless score <show_grave_info--an--location.xyz> sgrave2.config matches 1 unless score <show_grave_info--an--location.dim> sgrave2.config matches 1 run tellraw @a[tag=!sgrave2.temp.grave.owner] {\
  "translate": "\n§c☠ %s §6#%s\n",\
  "with": [\
    {\
      "nbt": "item.components.minecraft:custom_data.sgrave2:common.owner.name",\
      "entity": "@n[tag=sgrave2.temp.grave.base]",\
      "color": "red"\
    },\
    {\
      "nbt": "item.components.minecraft:custom_data.sgrave2:common.gid",\
      "entity": "@n[tag=sgrave2.temp.grave.base]",\
      "color": "gold"\
    }\
  ]\
}