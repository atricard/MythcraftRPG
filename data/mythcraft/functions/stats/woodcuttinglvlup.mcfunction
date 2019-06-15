scoreboard players operation @s wcLvl -= @s wcMax
scoreboard players operation @s wcMax = @s wc
scoreboard players add @s wcMax 2
scoreboard players operation @s wcMax *= @s wcMax
scoreboard players operation @s wcMax *= tenPH ten
scoreboard players add @s wc 1
title @s title {"text":"⽄"}
title @s subtitle {"text":"Level Up!","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s