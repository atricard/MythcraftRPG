tag @a[tag=smithing] remove smithing
execute as @a at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=smithingtable,distance=..1] run tag @s add smithing
execute as @a at @s positioned ^ ^ ^1 unless entity @e[type=armor_stand,tag=smithingtable,distance=..1] run tag @s remove smithing
scoreboard players set @a[tag=!smithing] smithingPage 0
execute as @a[tag=smithing] at @s run function mythcraft:smithing/view/menu