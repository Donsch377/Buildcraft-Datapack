tag @s add buildcraft.finished
tag @s remove buildcraft.quarry
kill @e[type=minecraft:item_display,tag=buildcraft.quarry_visual,distance=..1]
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.05 12 force
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 0.7 1.2
tellraw @a[distance=..16] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry finished its 32-layer run.","color":"green"}]
