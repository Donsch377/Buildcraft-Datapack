tag @e[type=minecraft:marker,tag=buildcraft.quarry_start,distance=..256] remove buildcraft.quarry_start
execute store result score @s bc_min_x run data get entity @s Pos[0] 1
execute store result score @s bc_max_x run data get entity @s Pos[0] 1
execute store result score @s bc_min_z run data get entity @s Pos[2] 1
execute store result score @s bc_max_z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] store result score @s bc_x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] store result score @s bc_z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] run scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_min_x = @s bc_x
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] run scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_max_x = @s bc_x
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] run scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_min_z = @s bc_z
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] run scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_max_z = @s bc_z
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] if score @s bc_x < @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_min_x run scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_min_x = @s bc_x
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] if score @s bc_x > @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_max_x run scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_max_x = @s bc_x
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] if score @s bc_z < @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_min_z run scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_min_z = @s bc_z
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] if score @s bc_z > @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_max_z run scoreboard players operation @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_max_z = @s bc_z
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256] if score @s bc_x = @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_min_x if score @s bc_z = @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_min_z run tag @s add buildcraft.quarry_start
scoreboard players operation @s bc_width = @s bc_max_x
scoreboard players operation @s bc_width -= @s bc_min_x
scoreboard players add @s bc_width 1
scoreboard players operation @s bc_length = @s bc_max_z
scoreboard players operation @s bc_length -= @s bc_min_z
scoreboard players add @s bc_length 1
scoreboard players operation @s bc_area = @s bc_width
scoreboard players operation @s bc_area *= @s bc_length
execute if score @s bc_width matches 1..128 if score @s bc_length matches 1..128 run function buildcraft:remote/apply
execute unless score @s bc_width matches 1..128 run tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Marker area is too wide. Keep each side within 128 blocks.","color":"red"}]
execute unless score @s bc_length matches 1..128 run tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Marker area is too long. Keep each side within 128 blocks.","color":"red"}]
