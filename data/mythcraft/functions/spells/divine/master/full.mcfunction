execute as @s[tag=!valid1,scores={bookclick=1..}] at @s run tellraw @s [{"text":"Insufficient Mana!","color":"reset"},{"text":" (","color":"reset"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":" < ","color":"reset"},{"score":{"name":"@s","objective":"ManaCost"},"color":"blue"},{"text":")","color":"reset"}]
execute as @s[tag=!valid1,scores={bookclick=1..}] at @s run playsound minecraft:entity.generic.extinguish_fire player @s ~ ~ ~ 1 1.5 1
execute if score @s mana >= @s ManaCost run tag @s add valid1
execute if score @s mana < @s ManaCost run tag @s remove valid1
execute store result score @s ManaCost run data get entity @s SelectedItem.tag.ManaCost

execute as @s[tag=valid1,tag=spellName,scores={bookclick=1..}] at @s run function mythcraft:spells/divine/spellname

tag @s[tag=spellName] remove spellName
execute as @s run function mythcraft:master/resetbook

tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Spell:1,display:{Name:"{\"text\":\"Tome of Curing\",\"color\":\"dark_blue\",\"italic\":false}",Lore:["[{\"text\":\"Description.\",\"color\":\"gold\",\"italic\":false}]"]},HideFlags:1,CustomModelData:1234,Recipes:["mythcraft:togglespells"]}}}] add spellName