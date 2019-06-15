playsound minecraft:block.enchantment_table.use player @a
effect give @s minecraft:regeneration 3 9
particle minecraft:end_rod ~ ~1 ~ 0.75 0.5 0.75 0.01 50
scoreboard players add @s castSpell 1
tag @a[tag=valid1] remove valid1
tag @a[tag=valid2] remove valid2