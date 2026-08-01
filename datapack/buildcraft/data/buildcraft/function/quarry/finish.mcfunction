execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..512,sort=nearest,limit=1] run tag @s add buildcraft.finished
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..512,sort=nearest,limit=1] run tag @s remove buildcraft.quarry
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_min_x,distance=..512] run tag @s remove buildcraft.quarry_min_x
kill @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512]
kill @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512]
kill @e[type=minecraft:interaction,tag=buildcraft.quarry_interaction,distance=..512]
kill @s
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.05 12 force
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 0.7 1.2
tellraw @a[distance=..16] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry reached bedrock and finished.","color":"green"}]
