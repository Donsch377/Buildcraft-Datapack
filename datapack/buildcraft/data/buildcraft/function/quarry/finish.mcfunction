execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..128,sort=nearest,limit=1] run tag @s add buildcraft.finished
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..128,sort=nearest,limit=1] run tag @s remove buildcraft.quarry
kill @s
kill @e[type=minecraft:item_display,tag=buildcraft.quarry_visual,distance=..128]
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.05 12 force
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 0.7 1.2
tellraw @a[distance=..16] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry reached bedrock and finished.","color":"green"}]
