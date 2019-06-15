execute as @e[type=!player,type=!armor_stand,distance=..1] store result entity @s Health float 1 run scoreboard players remove @s health 2
effect give @e[type=!player,type=!armor_stand,distance=..1] minecraft:instant_damage
effect give @e[type=!player,type=!armor_stand,distance=..1] minecraft:instant_health