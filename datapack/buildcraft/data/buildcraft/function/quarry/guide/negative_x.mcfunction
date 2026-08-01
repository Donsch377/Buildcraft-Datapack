scoreboard players add #guide bc_guide 1
particle minecraft:soul_fire_flame ~-1 ~0.7 ~ 0 0 0 0 1 force
execute if score #guide bc_guide matches ..31 positioned ~-1 ~ ~ run return run function buildcraft:quarry/guide/negative_x
