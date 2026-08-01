scoreboard players set @s bc_row 0
scoreboard players set @s bc_col 0
scoreboard players set @s bc_bedrock_count 0
scoreboard players add @s bc_depth 1
execute at @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..512,sort=nearest,limit=1] run tp @s ~ ~-1 ~
scoreboard players operation @s bc_move = @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..512,sort=nearest,limit=1] bc_x
scoreboard players operation @s bc_move -= @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..512,sort=nearest,limit=1] bc_min_x
function buildcraft:quarry/move_to_min_x
scoreboard players operation @s bc_move = @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..512,sort=nearest,limit=1] bc_z
scoreboard players operation @s bc_move -= @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..512,sort=nearest,limit=1] bc_min_z
function buildcraft:quarry/move_to_min_z
