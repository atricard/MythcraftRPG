execute as @s[tag=tomeCure,scores={bookclick=1..}] at @s run function mythcraft:spells/tomes/cure
execute as @s[tag=tomeFire,scores={bookclick=1..}] at @s run function mythcraft:spells/tomes/fire
execute as @s[tag=tomeFrost,scores={bookclick=1..}] at @s run function mythcraft:spells/tomes/frost
execute as @s[tag=tomeStone,scores={bookclick=1..}] at @s run function mythcraft:spells/tomes/stone
execute as @s[tag=tomeAcid,scores={bookclick=1..}] at @s run function mythcraft:spells/tomes/acid
execute as @s[tag=tomeStorm,scores={bookclick=1..}] at @s run function mythcraft:spells/tomes/storm
execute as @s[tag=tomeForget,scores={bookclick=1..}] at @s run function mythcraft:spells/tomes/forget

tag @s[tag=tomeCure] remove tomeCure
tag @s[tag=tomeFire] remove tomeFire
tag @s[tag=tomeFrost] remove tomeFrost
tag @s[tag=tomeStone] remove tomeStone
tag @s[tag=tomeAcid] remove tomeAcid
tag @s[tag=tomeStorm] remove tomeStorm
tag @s[tag=tomeForget] remove tomeForget
execute as @s run function mythcraft:master/resetbook

tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Tome:1,display:{Name:"{\"text\":\"Tome of Curing\",\"color\":\"blue\",\"italic\":false}",Lore:["[{\"text\":\"Better than your average HP potion.\",\"color\":\"gold\",\"italic\":false}]"]},HideFlags:1,CustomModelData:1102,Enchantments:[{id:"minecraft:protection",lvl:1s}],Recipes:["mythcraft:togglespells"]}}}] add tomeCure
tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Tome:1,display:{Name:"{\"text\":\"Tome of Ignition\",\"color\":\"blue\",\"italic\":false}",Lore:["[{\"text\":\"Better than your average HP potion.\",\"color\":\"gold\",\"italic\":false}]"]},HideFlags:1,CustomModelData:1102,Enchantments:[{id:"minecraft:protection",lvl:1s}],Recipes:["mythcraft:togglespells"]}}}] add tomeFire
tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Tome:1,display:{Name:"{\"text\":\"Tome of Frost\",\"color\":\"blue\",\"italic\":false}",Lore:["[{\"text\":\"Better than your average HP potion.\",\"color\":\"gold\",\"italic\":false}]"]},HideFlags:1,CustomModelData:1102,Enchantments:[{id:"minecraft:protection",lvl:1s}],Recipes:["mythcraft:togglespells"]}}}] add tomeFrost
tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Tome:1,display:{Name:"{\"text\":\"Tome of Petrification\",\"color\":\"blue\",\"italic\":false}",Lore:["[{\"text\":\"Better than your average HP potion.\",\"color\":\"gold\",\"italic\":false}]"]},HideFlags:1,CustomModelData:1102,Enchantments:[{id:"minecraft:protection",lvl:1s}],Recipes:["mythcraft:togglespells"]}}}] add tomeStone
tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Tome:1,display:{Name:"{\"text\":\"Tome of Acid\",\"color\":\"blue\",\"italic\":false}",Lore:["[{\"text\":\"Better than your average HP potion.\",\"color\":\"gold\",\"italic\":false}]"]},HideFlags:1,CustomModelData:1102,Enchantments:[{id:"minecraft:protection",lvl:1s}],Recipes:["mythcraft:togglespells"]}}}] add tomeAcid
tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Tome:1,display:{Name:"{\"text\":\"Tome of Storms\",\"color\":\"blue\",\"italic\":false}",Lore:["[{\"text\":\"Better than your average HP potion.\",\"color\":\"gold\",\"italic\":false}]"]},HideFlags:1,CustomModelData:1102,Enchantments:[{id:"minecraft:protection",lvl:1s}],Recipes:["mythcraft:togglespells"]}}}] add tomeStorm
tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Tome:1,display:{Name:"{\"text\":\"Tome of Amnesia\",\"color\":\"blue\",\"italic\":false}",Lore:["[{\"text\":\"Better than your average HP potion.\",\"color\":\"gold\",\"italic\":false}]"]},HideFlags:1,CustomModelData:1102,Enchantments:[{id:"minecraft:protection",lvl:1s}],Recipes:["mythcraft:togglespells"]}}}] add tomeForget