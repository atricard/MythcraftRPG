setblock ~ ~ ~ chest[type=left]{CustomName:"{\"text\":\"\\uF808\\uE002\",\"color\":\"white\"}"}
summon armor_stand ~ ~-1.25 ~ {NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["grindstone"],ArmorItems:[{},{},{},{id:"minecraft:grindstone",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]}
summon armor_stand ~ ~-1.45 ~ {NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["grindstonebase"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone_slab",Count:1b}]}
playsound minecraft:block.anvil.place block @a
kill @e[tag=grindstoneplace]