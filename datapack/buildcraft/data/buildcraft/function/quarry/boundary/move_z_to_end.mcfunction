execute if score #boundary_run bc_guide matches 2.. run scoreboard players remove #boundary_run bc_guide 1
execute if score #boundary_run bc_guide matches 2.. positioned ~ ~ ~1 run return run function buildcraft:quarry/boundary/move_z_to_end
execute if score #boundary_run bc_guide matches 1 run function buildcraft:quarry/boundary/line_x
