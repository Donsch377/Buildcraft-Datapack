scoreboard players operation #boundary_run bc_guide = @s bc_width
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/boundary/line_x
scoreboard players operation #boundary_run bc_guide = @s bc_length
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/boundary/line_z
scoreboard players operation #boundary_run bc_guide = @s bc_width
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/boundary/move_x_to_end
scoreboard players operation #boundary_run bc_guide = @s bc_length
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/boundary/move_z_to_end
