scoreboard players set #x_count bc_marker_count 0
scoreboard players set #z_count bc_marker_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.setup_x,distance=..256] run scoreboard players add #x_count bc_marker_count 1
execute as @e[type=minecraft:marker,tag=buildcraft.setup_z,distance=..256] run scoreboard players add #z_count bc_marker_count 1
execute if score @s bc_configured matches -1 run scoreboard players set @s bc_configured 0
execute if score @s bc_configured matches 0 if score #x_count bc_marker_count matches 1 if score #z_count bc_marker_count matches 1 run function buildcraft:quarry/configure
