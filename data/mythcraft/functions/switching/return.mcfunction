loot replace entity @p[tag=keepclose] hotbar.0 9 mine 0 0 0 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock 0 0 0 minecraft:bedrock
setblock 0 0 0 minecraft:shulker_box{Lock:"abc"}
data merge entity @s {ArmorItems:[{id:"minecraft:shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:1b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:2b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:3b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:4b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:5b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:6b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:7b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}}]}}},{},{},{}]}
replaceitem entity @p[tag=keepclose] hotbar.8 minecraft:knowledge_book{Toggle:1,Recipes:["mythcraft:togglespells"],CustomModelData:1101,display:{Name:"{\"text\":\"Toggle Spells\",\"color\":\"light_purple\",\"italic\":false,\"underlined\":true}",Lore:["{\"text\":\"Right-click to reveal your spells.\",\"color\":\"yellow\",\"italic\":false}"]}} 1

tag @p[tag=togglesecond] remove togglesecond