scoreboard players set #guide_markers bc_marker_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] run scoreboard players add #guide_markers bc_marker_count 1
execute if score @s bc_configured matches -1 run particle minecraft:angry_villager ~0.5 ~1.2 ~0.5 0.25 0.2 0.25 0 3 force
execute if score #guide_markers bc_marker_count matches 0 run function buildcraft:quarry/guide/from_point
execute if score #guide_markers bc_marker_count matches 1 run function buildcraft:quarry/guide/from_first_marker
