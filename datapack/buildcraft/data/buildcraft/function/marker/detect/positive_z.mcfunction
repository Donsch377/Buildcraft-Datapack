scoreboard players add #ray_scan bc_guide 1
execute if score #ray_scan bc_guide matches ..32 positioned ~ ~ ~1 if block ~ ~ ~ minecraft:soul_torch unless entity @e[type=minecraft:marker,tag=buildcraft.setup_z,distance=..0.2] run summon minecraft:marker ~ ~ ~ {Tags:["buildcraft.setup_z"]}
execute if score #ray_scan bc_guide matches ..31 positioned ~ ~ ~1 run function buildcraft:marker/detect/positive_z
