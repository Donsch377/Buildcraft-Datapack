# This prototype allows one active quarry, so cleanup must also be global.
# The old version searched only eight blocks around the player and could leave
# a hidden anchor/head elsewhere blocking every new quarry.
kill @e[type=minecraft:marker,tag=buildcraft.quarry_head]
kill @e[type=minecraft:marker,tag=buildcraft.quarry_origin]
kill @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin]
kill @e[type=minecraft:interaction,tag=buildcraft.quarry_interaction]
kill @e[type=minecraft:marker,tag=buildcraft.quarry]
kill @e[type=minecraft:marker,tag=buildcraft.finished]
kill @e[type=minecraft:marker,tag=buildcraft.marker]
kill @e[type=minecraft:item_display,tag=buildcraft.quarry_visual]
tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"All quarry state and landmark markers were cleared. Quarry blocks, chests, and soul torches were left in place; break and replace torches to register them again.","color":"yellow"}]
