scoreboard players operation @s tpID = @e[tag=keepclose,type=minecraft:armor_stand,sort=nearest,limit=1] tpID
replaceitem entity @s hotbar.8 minecraft:knowledge_book{Toggle:1,Recipes:["mythcraft:togglespells"],CustomModelData:1101,display:{Name:"{\"text\":\"Toggle Spells\",\"color\":\"light_purple\",\"italic\":false,\"underlined\":true}",Lore:["{\"text\":\"Right-click to reveal your spells.\",\"color\":\"yellow\",\"italic\":false}"]}}
scoreboard players set @s leave 0