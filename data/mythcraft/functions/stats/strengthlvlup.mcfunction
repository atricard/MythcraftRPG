scoreboard players operation @s strengthLvl -= @s strengthMax
scoreboard players operation @s strengthMax = @s strength
scoreboard players add @s strengthMax 2
scoreboard players operation @s strengthMax *= @s strengthMax
scoreboard players operation @s strengthMax *= tenPH ten
scoreboard players add @s strength 1
title @s title {"text":"⚔"}
title @s subtitle {"text":"Level Up!","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s