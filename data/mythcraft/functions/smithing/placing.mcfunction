execute as @e[tag=smithingtableplace] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["smithingtable"]}
execute as @e[tag=smithingtableplace] at @s run summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["smithingclick"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999999980,ShowParticles:0b}],VillagerData:{level:1,profession:"minecraft:armorer",type:"minecraft:desert"},Offers:{}}
execute as @e[tag=smithingtableplace] at @s run setblock ~ ~ ~ minecraft:smithing_table
execute as @e[tag=smithingtableplace] run kill @s