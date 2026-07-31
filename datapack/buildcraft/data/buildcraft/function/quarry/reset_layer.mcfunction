scoreboard players set @s bc_row 0
scoreboard players set @s bc_col 0
scoreboard players set @s bc_bedrock_count 0
scoreboard players add @s bc_depth 1
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] at @s run tp @s ~ ~-1 ~
execute at @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512,sort=nearest,limit=1] run tp @s ~ ~ ~
