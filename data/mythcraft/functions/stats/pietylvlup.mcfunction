scoreboard players operation @s pietyLvl -= @s pietyMax
scoreboard players operation @s pietyMax = @s piety
scoreboard players add @s pietyMax 2
scoreboard players operation @s pietyMax *= @s pietyMax
scoreboard players operation @s pietyMax *= tenPH ten
scoreboard players add @s piety 1
title @s title {"text":"✝"}
title @s subtitle {"text":"Level Up!","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s