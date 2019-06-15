scoreboard players add @e[tag=keepclose] tpID 1
execute as @e[tag=keepclose,type=minecraft:armor_stand] at @s if score @s tpID = @p[tag=keepclose] tpID run teleport @s @p[tag=keepclose]