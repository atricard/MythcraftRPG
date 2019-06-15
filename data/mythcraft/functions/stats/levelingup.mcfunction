scoreboard players add @s[scores={openlock=1..}] lootingLvl 10
tellraw @s[scores={openlock=1..}] {"text":"+10 Looting XP","color":"green"}
scoreboard players set @s[scores={openlock=1..}] openlock 0
scoreboard players add @s[scores={chopOak=1..}] wcLvl 10
tellraw @s[scores={chopOak=1..}] {"text":"+1 Woodcutting XP","color":"green"}
scoreboard players set @s[scores={chopOak=1..}] chopOak 0
scoreboard players add @s[scores={chopBirch=1..}] wcLvl 1
tellraw @s[scores={chopBirch=1..}] {"text":"+1 Woodcutting XP","color":"green"}
scoreboard players set @s[scores={chopBirch=1..}] chopBirch 0
scoreboard players add @s[scores={chopSpruce=1..}] wcLvl 1
tellraw @s[scores={chopSpruce=1..}] {"text":"+1 Woodcutting XP","color":"green"}
scoreboard players set @s[scores={chopSpruce=1..}] chopSpruce 0
scoreboard players add @s[scores={chopJungle=1..}] wcLvl 1
tellraw @s[scores={chopJungle=1..}] {"text":"+1 Woodcutting XP","color":"green"}
scoreboard players set @s[scores={chopJungle=1..}] chopJungle 0
scoreboard players add @s[scores={chopAcacia=1..}] wcLvl 1
tellraw @s[scores={chopAcacia=1..}] {"text":"+1 Woodcutting XP","color":"green"}
scoreboard players set @s[scores={chopAcacia=1..}] chopAcacia 0
scoreboard players add @s[scores={chopDarkOak=1..}] wcLvl 1
tellraw @s[scores={chopDarkOak=1..}] {"text":"+1 Woodcutting XP","color":"green"}
scoreboard players set @s[scores={chopDarkOak=1..}] chopDarkOak 0
scoreboard players add @s[scores={mineCoal=1..}] miningLvl 5
tellraw @s[scores={mineCoal=1..}] {"text":"+5 Mining XP","color":"green"}
scoreboard players set @s[scores={mineCoal=1..}] mineCoal 0
scoreboard players add @s[scores={mineGold=1..}] miningLvl 10
tellraw @s[scores={mineGold=1..}] {"text":"+10 Mining XP","color":"green"}
scoreboard players set @s[scores={mineGold=1..}] mineGold 0
scoreboard players add @s[scores={mineIron=1..}] miningLvl 15
tellraw @s[scores={mineIron=1..}] {"text":"+15 Mining XP","color":"green"}
scoreboard players set @s[scores={mineIron=1..}] mineIron 0
scoreboard players add @s[scores={mineDiamond=1..}] miningLvl 20
tellraw @s[scores={mineDiamond=1..}] {"text":"+20 Mining XP","color":"green"}
scoreboard players set @s[scores={mineDiamond=1..}] mineDiamond 0
scoreboard players add @s[scores={castSpell=1..}] magicLvl 10
tellraw @s[scores={castSpell=1..}] {"text":"+10 Magic XP","color":"green"}
scoreboard players set @s[scores={castSpell=1..}] castSpell 0
scoreboard players add @s[scores={craftItem=1..}] smithingLvl 10
tellraw @s[scores={craftItem=1..}] {"text":"+10 Smithing XP","color":"green"}
scoreboard players set @s[scores={craftItem=1..}] craftItem 0
scoreboard players add @s[scores={killMob=1..}] strengthLvl 2
tellraw @s[scores={killMob=1..}] {"text":"+5 Strength XP","color":"green"}
scoreboard players set @s[scores={killMob=1..}] killMob 0