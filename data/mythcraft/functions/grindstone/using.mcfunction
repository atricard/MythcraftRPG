tag @s remove weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:wooden_sword"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:stone_sword"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:diamond_sword"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:golden_sword"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:iron_sword"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:iron_axe"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:wooden_axe"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:stone_axe"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:diamond_axe"}]} run tag @s add weaponput
execute if block ~ ~2 ~ chest{Items:[{Slot:11b,id:"minecraft:golden_axe"}]} run tag @s add weaponput
execute store result score @s grindstoneIP run data get block ~ ~2 ~ Items.[{Slot:11b}].Count

tag @s[tag=!outputtaken] add outputtaken

execute as @s[tag=outputtaken,tag=!weaponput] run replaceitem block ~ ~2 ~ container.15 air

execute as @s[tag=outputtaken] unless block ~ ~2 ~ chest{Items:[{Slot:15b}]} run scoreboard players operation @s grindstoneIP -= @s grindstoneOP
execute as @s[tag=outputtaken] unless block ~ ~2 ~ chest{Items:[{Slot:15b}]} store result block ~ ~2 ~ Items.[{Slot:11b}].Count byte 1 run scoreboard players get @s grindstoneIP
execute as @s[tag=outputtaken,tag=!weaponput] unless block ~ ~2 ~ chest{Items:[{Slot:15b}]} run tag @s remove outputtaken

execute as @s[scores={grindstoneOP=1,grindstoneIP=0}] at @s run playsound minecraft:block.grindstone.use block @a

execute as @s[tag=weaponput] run function mythcraft:grindstone/storeweapon

execute if entity @s[tag=!weaponput] run scoreboard players set @s grindstoneOP 0
execute store result score @s grindstoneOP run data get block ~ ~2 ~ Items.[{Slot:15b}].Count

execute as @s[scores={grindstoneOP=1,grindstoneIP=0}] run particle crit ~ ~ ~ 0.25 0.25 0.25 0 25
execute as @s[scores={grindstoneOP=1,grindstoneIP=0}] run playsound minecraft:block.stone.break block @a
execute as @s[scores={grindstoneOP=1,grindstoneIP=0}] run setblock ~ ~2 ~ air

execute as @e[tag=grindstonebase] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=grindstone] at @s run tp @s ~ ~ ~ ~5 ~