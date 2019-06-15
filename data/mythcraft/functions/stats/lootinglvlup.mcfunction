scoreboard players operation @s lootingLvl -= @s lootingMax
scoreboard players operation @s lootingMax = @s looting
scoreboard players add @s lootingMax 2
scoreboard players operation @s lootingMax *= @s lootingMax
scoreboard players operation @s lootingMax *= tenPH ten
scoreboard players add @s looting 1
title @s title {"text":"➹"}
title @s subtitle {"text":"Level Up!","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s