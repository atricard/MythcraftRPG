execute as @a[tag=!keepclose] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["save_data","keepclose"],ArmorItems:[{id:"minecraft:shulker_box",Count:1b,tag:{BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:1b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:2b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:3b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:4b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:5b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:6b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}},{Slot:7b,id:"minecraft:stone",Count:1b,tag:{display:{Lore:["{\"text\":\"ignore\"}"]}}}]}}},{},{},{}]}
replaceitem entity @a[tag=!keepclose] hotbar.8 minecraft:knowledge_book{Toggle:1,Recipes:["mythcraft:togglespells"],CustomModelData:1101,display:{Name:"{\"text\":\"Toggle Spells\",\"color\":\"light_purple\",\"italic\":false,\"underlined\":true}",Lore:["{\"text\":\"Right-click to reveal your spells.\",\"color\":\"yellow\",\"italic\":false}"]}}
tag @a[tag=!keepclose] add keepclose
execute as @a[tag=!start] run scoreboard players set @s manaCDlvl 25
execute as @a[tag=!start] run scoreboard players set @s looting 0
execute as @a[tag=!start] run scoreboard players set @s lootingMax 10
execute as @a[tag=!start] run scoreboard players set @s magic 0
execute as @a[tag=!start] run scoreboard players set @s magicMax 10
execute as @a[tag=!start] run scoreboard players set @s smithing 0
execute as @a[tag=!start] run scoreboard players set @s smithingMax 10
execute as @a[tag=!start] run scoreboard players set @s strength 0
execute as @a[tag=!start] run scoreboard players set @s strengthMax 10
execute as @a[tag=!start] run scoreboard players set @s piety 0
execute as @a[tag=!start] run scoreboard players set @s pietyMax 10
execute as @a[tag=!start] run scoreboard players set @s wc 0
execute as @a[tag=!start] run scoreboard players set @s wcMax 10
execute as @a[tag=!start] run scoreboard players set @s mining 0
execute as @a[tag=!start] run scoreboard players set @s miningMax 10
execute as @a[tag=!start] run scoreboard players set @s strengthLvl 0
execute as @a[tag=!start] run scoreboard players set @s magicLvl 0
execute as @a[tag=!start] run scoreboard players set @s smithingLvl 0
execute as @a[tag=!start] run scoreboard players set @s lootingLvl 0
execute as @a[tag=!start] run scoreboard players set @s wcLvl 0
execute as @a[tag=!start] run scoreboard players set @s miningLvl 0
execute as @a[tag=!start] run scoreboard players set @s pietyLvl 0

execute as @a[tag=!start] run scoreboard players set @s leave 1
effect give @a[scores={leave=1..}] minecraft:health_boost 99999 9 true
effect give @a minecraft:saturation 2 255 true
effect give @a[tag=!start] minecraft:regeneration 10 255
tag @a[tag=keepclose] add start

execute as @a[scores={leave=1..}] at @s run function mythcraft:switching/adjust
function mythcraft:switching/teleport
#
execute as @a[tag=tomehold] run function mythcraft:spells/tomes/master/tag
execute as @a[scores={bookclick=1..},tag=togglehold] run function mythcraft:switching/toggle
execute as @a[tag=spellhold] run function mythcraft:spells/divine/master/full
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Toggle:1}}}] add togglehold
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Tome:1}}}] add tomehold
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",Count:1b,tag:{Spell:1}}}] add spellhold
#
clear @a minecraft:stone{display:{Lore:["{\"text\":\"ignore\"}"]}}
#mana!!!!!!!!!!!!!!!!!!!!
execute as @a[tag=start] run function mythcraft:mana/add

scoreboard players enable @a helpTrigger
execute as @a[scores={helpTrigger=1}] run function mythcraft:master/helptrigger

execute as @a[tag=start] at @s run function mythcraft:stats/levelingup
execute as @a[tag=start] at @s run function mythcraft:stats/looting
execute as @a[tag=start] at @s run function mythcraft:stats/magic
execute as @a[tag=start] at @s run function mythcraft:stats/smithing
execute as @a[tag=start] at @s run function mythcraft:stats/strength
execute as @a[tag=start] at @s run function mythcraft:stats/woodcutting
execute as @a[tag=start] at @s run function mythcraft:stats/mining
execute as @a[tag=start] at @s run function mythcraft:stats/piety

execute as @e[tag=grindstoneplace] at @s run function mythcraft:grindstone/placing
execute as @e[tag=grindstone] at @s run function mythcraft:grindstone/using
execute as @e[tag=grindstone] at @s run function mythcraft:grindstone/breaking
execute as @e[tag=grindstonebase] at @s run function mythcraft:grindstone/breaking

function mythcraft:damage/health
tag @a[scores={crack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:9904,display:{Name:"{\"text\":\"Whip\",\"italic\":false}"}}}}] add whip
execute as @a[tag=whip] at @s run function mythcraft:weapons/whip

execute as @a run title @s actionbar [{"text":"["},{"score":{"name":"@s","objective":"health"},"color":"red"},{"text":"/"},{"text":"60","color":"red"},{"text":"]  "},{"text":"⚔ "},{"score":{"name":"@s","objective":"strength"},"color":"dark_red"},{"text":"  ✪ "},{"score":{"name":"@s","objective":"magic"},"color":"dark_blue"},{"text":"  ⚒ "},{"score":{"name":"@s","objective":"smithing"},"color":"dark_gray"},{"text":"  ⽄ "},{"score":{"name":"@s","objective":"wc"},"color":"dark_green"},{"text":"  ⛏ "},{"score":{"name":"@s","objective":"mining"},"color":"dark_aqua"},{"text":"  ➹ "},{"score":{"name":"@s","objective":"looting"},"color":"gold"},{"text":"  ✝ "},{"score":{"name":"@s","objective":"piety"},"color":"dark_purple"},{"text":"  ["},{"score":{"name":"@s","objective":"mana"},"color":"aqua"},{"text":"/"},{"text":"100","color":"aqua"},{"text":"]"}]

function mythcraft:mining/ore
execute as @a run function mythcraft:smithing/view/store
function mythcraft:smithing/view/scroll
execute as @a[tag=smithing] run function mythcraft:smithing/crafting/wood
function mythcraft:smithing/placing