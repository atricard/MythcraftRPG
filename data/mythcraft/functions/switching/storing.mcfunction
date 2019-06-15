execute as @s run data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items set from entity @p[tag=togglefirst] Inventory 
execute as @p run function mythcraft:switching/clear

replaceitem entity @p[tag=keepclose,tag=togglefirst] hotbar.8 minecraft:knowledge_book{Toggle:1,Recipes:["mythcraft:togglespells"],CustomModelData:1101,display:{Name:"{\"text\":\"Toggle Hotbar\",\"color\":\"light_purple\",\"italic\":false,\"underlined\":true}",Lore:["{\"text\":\"Right-click to reveal your hotbar.\",\"color\":\"yellow\",\"italic\":false}"]}} 1
tag @p[tag=togglefirst] remove togglefirst