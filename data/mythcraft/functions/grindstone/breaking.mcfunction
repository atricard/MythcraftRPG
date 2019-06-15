execute if block ~ ~2 ~ air run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest",Count:1b}}]
execute if block ~ ~2 ~ air run kill @s
data merge entity @s {Fire:99}