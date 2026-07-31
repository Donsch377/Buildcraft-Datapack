# Copy the rectangle state onto the moving head. The old implementation kept
# these scores only on the stationary anchor, which caused the unbounded snake.
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_width = @s bc_width
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_length = @s bc_length
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] bc_area = @s bc_area
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_row 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_col 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_bedrock_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_depth 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_paused 0

# Start on any minimum-X marker, then walk its Z coordinate down to minimum Z.
# This also works when the player used the other three corners and no marker
# physically exists at the derived minimum-X/minimum-Z corner.
execute at @e[type=minecraft:marker,tag=buildcraft.quarry_min_x,distance=..256,sort=nearest,limit=1] run tp @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] ~ ~-1 ~
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] store result score @s bc_z run data get entity @s Pos[2] 1
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] bc_move = @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] bc_z
scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] bc_move -= @s bc_min_z
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] at @s run function buildcraft:quarry/move_origin_to_min_z
execute at @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] run tp @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] ~ ~ ~
scoreboard players set @s bc_configured 1
tellraw @a[distance=..16] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Three markers detected. Quarry resized to the marked rectangle.","color":"green"}]
