execute store result score @s bc_x run data get entity @s Pos[0] 1
execute store result score @s bc_z run data get entity @s Pos[2] 1
execute store result score #marker_x bc_x run data get entity @e[type=minecraft:marker,tag=buildcraft.setup_x,distance=..256,sort=nearest,limit=1] Pos[0] 1
execute store result score #marker_z bc_z run data get entity @e[type=minecraft:marker,tag=buildcraft.setup_z,distance=..256,sort=nearest,limit=1] Pos[2] 1
scoreboard players operation @s bc_min_x = @s bc_x
scoreboard players operation @s bc_max_x = @s bc_x
scoreboard players operation @s bc_min_z = @s bc_z
scoreboard players operation @s bc_max_z = @s bc_z
execute if score #marker_x bc_x < @s bc_min_x run scoreboard players operation @s bc_min_x = #marker_x bc_x
execute if score #marker_x bc_x > @s bc_max_x run scoreboard players operation @s bc_max_x = #marker_x bc_x
execute if score #marker_z bc_z < @s bc_min_z run scoreboard players operation @s bc_min_z = #marker_z bc_z
execute if score #marker_z bc_z > @s bc_max_z run scoreboard players operation @s bc_max_z = #marker_z bc_z
scoreboard players operation @s bc_width = @s bc_max_x
scoreboard players operation @s bc_width -= @s bc_min_x
scoreboard players add @s bc_width 1
scoreboard players operation @s bc_length = @s bc_max_z
scoreboard players operation @s bc_length -= @s bc_min_z
scoreboard players add @s bc_length 1
scoreboard players operation @s bc_area = @s bc_width
scoreboard players operation @s bc_area *= @s bc_length
execute if score @s bc_width matches 2..33 if score @s bc_length matches 2..33 run function buildcraft:quarry/apply_rectangle
execute unless score @s bc_width matches 2..33 run tellraw @a[distance=..16] [{"text":"[BuildCraft] ","color":"gold"},{"text":"The X-axis marker must be 1 to 32 blocks from the Quarry.","color":"red"}]
execute unless score @s bc_length matches 2..33 run tellraw @a[distance=..16] [{"text":"[BuildCraft] ","color":"gold"},{"text":"The Z-axis marker must be 1 to 32 blocks from the Quarry.","color":"red"}]
execute unless score @s bc_width matches 2..33 run scoreboard players set @s bc_configured -1
execute unless score @s bc_length matches 2..33 run scoreboard players set @s bc_configured -1
