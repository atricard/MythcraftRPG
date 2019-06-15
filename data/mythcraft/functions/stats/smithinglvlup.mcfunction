scoreboard players operation @s smithingLvl -= @s smithingMax
scoreboard players operation @s smithingMax = @s smithing
scoreboard players add @s smithingMax 2
scoreboard players operation @s smithingMax *= @s smithingMax
scoreboard players operation @s smithingMax *= tenPH ten
scoreboard players add @s smithing 1
title @s title {"text":"⚒"}
title @s subtitle {"text":"Level Up!","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s