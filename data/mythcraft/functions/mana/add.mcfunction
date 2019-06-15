scoreboard players operation @s manaCD += @s manaCDlvl
execute as @s[scores={manaCD=1000..}] run function mythcraft:mana/add2
scoreboard players set @s[scores={mana=101..}] mana 100