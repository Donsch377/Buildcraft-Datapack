scoreboard players set @s bc_col 0
scoreboard players add @s bc_row 1
execute if score @s bc_row < @s bc_length run scoreboard players operation @s bc_move = @s bc_width
execute if score @s bc_row < @s bc_length run scoreboard players remove @s bc_move 1
execute if score @s bc_row < @s bc_length run function buildcraft:quarry/move_to_row_start
execute if score @s bc_row = @s bc_length run function buildcraft:quarry/finish_layer
