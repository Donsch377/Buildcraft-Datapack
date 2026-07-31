scoreboard players set #marker_count bc_marker_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] run scoreboard players add #marker_count bc_marker_count 1
execute if score #marker_count bc_marker_count matches 4.. run function buildcraft:remote/configure
execute unless score #marker_count bc_marker_count matches 4.. run function buildcraft:remote/toggle
