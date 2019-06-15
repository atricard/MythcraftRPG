scoreboard players add @s oreCD 1
execute as @e[tag=coal,scores={oreCD=36001}] at @s run setblock ~ ~ ~ minecraft:coal_ore
execute as @e[tag=gold,scores={oreCD=36001}] at @s run setblock ~ ~ ~ minecraft:gold_ore
execute as @e[tag=iron,scores={oreCD=36001}] at @s run setblock ~ ~ ~ minecraft:iron_ore
execute as @e[tag=diamond,scores={oreCD=36001}] at @s run setblock ~ ~ ~ minecraft:diamond_ore
execute as @e[tag=coal,scores={oreCD=36001}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.25 0.25 0.25 0 50 force
execute as @e[tag=gold,scores={oreCD=36001}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.25 0.25 0.25 0 50 force
execute as @e[tag=iron,scores={oreCD=36001}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.25 0.25 0.25 0 50 force
execute as @e[tag=diamond,scores={oreCD=36001}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.25 0.25 0.25 0 50 force
execute as @e[tag=coal,scores={oreCD=36001}] at @s run playsound minecraft:entity.item_frame.rotate_item block @a
execute as @e[tag=gold,scores={oreCD=36001}] at @s run playsound minecraft:entity.item_frame.rotate_item block @a
execute as @e[tag=iron,scores={oreCD=36001}] at @s run playsound minecraft:entity.item_frame.rotate_item block @a
execute as @e[tag=diamond,scores={oreCD=36001}] at @s run playsound minecraft:entity.item_frame.rotate_item block @a