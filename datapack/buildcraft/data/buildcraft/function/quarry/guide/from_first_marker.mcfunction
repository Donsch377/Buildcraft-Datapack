execute store result score @s bc_x run data get entity @s Pos[0] 1
execute store result score @s bc_z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] store result score @s bc_x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] store result score @s bc_z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] at @s if score @s bc_z = @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_z run function buildcraft:quarry/guide/z_axis
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] at @s if score @s bc_x = @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_x run function buildcraft:quarry/guide/x_axis
execute as @e[type=minecraft:marker,tag=buildcraft.marker,distance=..256,sort=nearest,limit=1] at @s unless score @s bc_x = @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_x unless score @s bc_z = @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] bc_z run particle minecraft:angry_villager ~ ~1.2 ~ 0.2 0.2 0.2 0 2 force
