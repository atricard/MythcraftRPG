scoreboard players operation @s magicLvl -= @s magicMax
scoreboard players operation @s magicMax = @s magic
scoreboard players add @s magicMax 2
scoreboard players operation @s magicMax *= @s magicMax
scoreboard players operation @s magicMax *= tenPH ten
scoreboard players add @s magic 1
scoreboard players add @s manaCDlvl 1
title @s title {"text":"✪"}
title @s subtitle {"text":"Level Up!","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s