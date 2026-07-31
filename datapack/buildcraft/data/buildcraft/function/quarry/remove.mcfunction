execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..8] run kill @s
execute as @e[type=minecraft:marker,tag=buildcraft.finished,distance=..8] run kill @s
kill @e[type=minecraft:item_display,tag=buildcraft.quarry_visual,distance=..8]
tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Nearby quarry anchors removed. Chests and the hopper pipe were left in place.","color":"yellow"}]
