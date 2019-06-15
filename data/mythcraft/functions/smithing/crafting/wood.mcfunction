execute as @s[scores={smithingPage=1,smithing=1..,clickvillager=1..,itemWood=3..,itemLeather=1..}] run tag @s add validsmith
execute as @s[tag=validsmith] run give @s minecraft:wooden_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:577478,UUIDMost:444064,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1.6,Operation:0,UUIDLeast:544038,UUIDMost:110647,Slot:"mainhand"}],display:{Lore:["{\"text\":\"Strength Lvl. Req. 1\",\"color\":\"green\",\"italic\":false}"]},StrengthLevel:1} 1 
execute as @s[tag=validsmith] run clear @s minecraft:phantom_membrane{display:{Name:"{\"text\":\"Wood\",\"italic\":false}"},CustomModelData:5501} 3
execute as @s[tag=validsmith] run clear @s minecraft:leather 1
execute as @s[tag=validsmith] at @s run playsound minecraft:block.anvil.use block @a
tag @s remove validsmith
execute as @s[scores={smithingPage=2,smithing=1..,clickvillager=1..,itemWood=3..,itemLeather=1..}] run tag @s add validsmith
execute as @s[tag=validsmith] run give @s minecraft:wooden_axe{CanDestroy:["minecraft:oak_wood"],display:{Lore:["{\"text\":\"Woodcutting Lvl. Req. 1\",\"color\":\"green\",\"italic\":false}"]},WoodcuttingLevel:1} 1
execute as @s[tag=validsmith] run clear @s minecraft:phantom_membrane{display:{Name:"{\"text\":\"Wood\",\"italic\":false}"},CustomModelData:5501} 3
execute as @s[tag=validsmith] run clear @s minecraft:leather 1
execute as @s[tag=validsmith] at @s run playsound minecraft:block.anvil.use block @a
tag @s remove validsmith
scoreboard players set @s[scores={clickvillager=1..}] clickvillager 0