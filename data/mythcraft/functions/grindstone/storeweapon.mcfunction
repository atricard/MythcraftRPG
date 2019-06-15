execute as @s run data modify entity @s ArmorItems[0] set from block ~ ~2 ~ Items.[{Slot:11b}]
replaceitem block ~ ~2 ~ container.15 stone
data modify block ~ ~2 ~ Items.[{Slot:15b}] merge from entity @s ArmorItems[0]

execute store result score @s sharpness run data get block ~ ~2 ~ Items.[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"generic.attackDamage"}].Amount
scoreboard players add @s sharpness 1
execute store result block ~ ~2 ~ Items.[{Slot:15b}].tag.AttributeModifiers[{AttributeName:"generic.attackDamage"}].Amount int 1 run scoreboard players get @s sharpness