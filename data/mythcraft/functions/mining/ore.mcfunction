execute as @e[tag=coalplace] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["coal","ore"]}
execute as @e[tag=goldplace] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["gold","ore"]}
execute as @e[tag=ironplace] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["iron","ore"]}
execute as @e[tag=diamondplace] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["diamond","ore"]}
tp @e[tag=placeore] ~ -100 ~
kill @e[tag=placeore]
scoreboard players add @e[tag=ore] oreSpawn 1
scoreboard players set @e[tag=ore,scores={oreSpawn=3..}] oreSpawn 2
execute as @e[tag=ore,scores={oreSpawn=1}] at @s run scoreboard players set @s oreCD 0
execute as @e[tag=coal,scores={oreCD=0}] at @s run setblock ~ ~ ~ minecraft:coal_ore
execute as @e[tag=gold,scores={oreCD=0}] at @s run setblock ~ ~ ~ minecraft:gold_ore
execute as @e[tag=iron,scores={oreCD=0}] at @s run setblock ~ ~ ~ minecraft:iron_ore
execute as @e[tag=diamond,scores={oreCD=0}] at @s run setblock ~ ~ ~ minecraft:diamond_ore

execute as @e[tag=ore] at @s run function mythcraft:mining/cooldown
execute as @e[tag=ore] at @s unless block ~ ~ ~ minecraft:air run scoreboard players set @s oreCD 1
execute as @e[tag=ore] at @s if block ~ ~ ~ minecraft:air run scoreboard players set @s[scores={oreCD=1}] oreCD 36001

execute as @e[tag=ore,tag=coal,scores={oreCD=2..36001}] at @s run particle dust 0.176 0.180 0.180 1 ~ ~ ~ 0.25 0.25 0.25 0 3 force
execute as @e[tag=ore,tag=gold,scores={oreCD=2..36001}] at @s run particle dust 1.000 0.914 0.129 1 ~ ~ ~ 0.25 0.25 0.25 0 3 force
execute as @e[tag=ore,tag=iron,scores={oreCD=2..36001}] at @s run particle dust 1.000 0.749 0.322 1 ~ ~ ~ 0.25 0.25 0.25 0 3 force
execute as @e[tag=ore,tag=diamond,scores={oreCD=2..36001}] at @s run particle dust 0.322 1.000 1.000 1 ~ ~ ~ 0.25 0.25 0.25 0 3 force