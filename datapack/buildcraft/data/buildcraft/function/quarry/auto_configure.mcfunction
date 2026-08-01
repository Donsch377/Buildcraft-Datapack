scoreboard players set #marker_count bc_marker_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] run scoreboard players add #marker_count bc_marker_count 1
execute if score @s bc_configured matches -1 unless score #marker_count bc_marker_count matches 2 run scoreboard players set @s bc_configured 0
execute if score @s bc_configured matches 0 if score #marker_count bc_marker_count matches 2 run function buildcraft:quarry/configure
