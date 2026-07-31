execute if score @s bc_move matches 1.. run tp @s ~ ~ ~-1
execute if score @s bc_move matches 1.. run scoreboard players remove @s bc_move 1
execute if score @s bc_move matches 1.. run function buildcraft:quarry/move_origin_to_min_z
