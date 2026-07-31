execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..8] at @s run kill @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512]
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..8] at @s run kill @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512]
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..8] run kill @s
execute as @e[type=minecraft:marker,tag=buildcraft.finished,distance=..8] run kill @s
kill @e[type=minecraft:item_display,tag=buildcraft.quarry_visual,distance=..512]
tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Nearby quarry state removed. The quarry block and output chest were left in place.","color":"yellow"}]
