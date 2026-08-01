execute if score #boundary_run bc_guide matches 1.. run particle minecraft:happy_villager ~ ~ ~ 0.12 0.12 0.12 0 3 force
execute if score #boundary_run bc_guide matches 1.. run scoreboard players remove #boundary_run bc_guide 1
execute if score #boundary_run bc_guide matches 1.. positioned ~ ~ ~1 run return run function buildcraft:quarry/boundary/line_z
