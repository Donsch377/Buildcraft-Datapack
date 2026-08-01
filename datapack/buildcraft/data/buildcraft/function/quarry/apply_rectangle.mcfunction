kill @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin]
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_width = @s bc_width
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_length = @s bc_length
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_area = @s bc_area
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_row 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_col 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_bedrock_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_depth 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_paused 0

# Put both the mining head and the visual boundary at the minimum X/Z corner.
execute at @s run tp @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] ~ ~-1 ~
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_move = @s bc_x
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_move -= @s bc_min_x
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/move_to_min_x
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_move = @s bc_z
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_move -= @s bc_min_z
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/move_to_min_z
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["buildcraft.quarry_boundary_origin"]}
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] bc_move = @s bc_x
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] bc_move -= @s bc_min_x
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/move_to_min_x
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] bc_move = @s bc_z
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] bc_move -= @s bc_min_z
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/move_to_min_z
scoreboard players set @s bc_configured 1
tellraw @a[distance=..16] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Two markers detected. Quarry boundary locked and mining started.","color":"green"}]
