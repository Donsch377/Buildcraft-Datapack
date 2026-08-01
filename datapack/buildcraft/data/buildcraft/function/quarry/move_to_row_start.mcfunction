execute if score @s bc_move matches 1.. run execute at @s run tp @s ~-1 ~ ~
execute if score @s bc_move matches 1.. run scoreboard players remove @s bc_move 1
execute if score @s bc_move matches 1.. run return run function buildcraft:quarry/move_to_row_start
execute if score @s bc_move matches 0 run execute at @s run tp @s ~ ~ ~1
