scoreboard players operation @s miningLvl -= @s miningMax
scoreboard players operation @s miningMax = @s mining
scoreboard players add @s miningMax 2
scoreboard players operation @s miningMax *= @s miningMax
scoreboard players operation @s miningMax *= tenPH ten
scoreboard players add @s mining 1
title @s title {"text":"⛏"}
title @s subtitle {"text":"Level Up!","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s