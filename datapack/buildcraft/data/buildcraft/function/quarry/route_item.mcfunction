execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..128,sort=nearest,limit=1] run data modify block ~ ~1 ~ Items append from entity @s Item
kill @s
