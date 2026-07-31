execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_row 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_col 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_bedrock_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players set @s bc_paused 0
execute at @e[type=minecraft:marker,tag=buildcraft.quarry_start,distance=..256,sort=nearest,limit=1] run tp @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] ~ ~-1 ~
scoreboard players set @s bc_configured 1
tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Four lapis markers detected. Quarry expanded to the marked rectangle.","color":"green"}]
