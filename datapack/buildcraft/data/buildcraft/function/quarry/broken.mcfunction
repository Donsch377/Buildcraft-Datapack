kill @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512]
kill @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512]
kill @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512]
kill @e[type=minecraft:marker,tag=buildcraft.setup_x,distance=..512]
kill @e[type=minecraft:marker,tag=buildcraft.setup_z,distance=..512]
kill @e[type=minecraft:interaction,tag=buildcraft.quarry_interaction,distance=..2]
tag @e[type=minecraft:marker,tag=buildcraft.quarry_min_x,distance=..512] remove buildcraft.quarry_min_x
kill @s
tellraw @a[distance=..16] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry stopped because its machine block was removed.","color":"yellow"}]
