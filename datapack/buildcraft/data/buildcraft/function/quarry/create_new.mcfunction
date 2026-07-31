execute unless block ~ ~1 ~ air run tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Cannot build: the output-chest position above you is occupied.","color":"red"}]
execute unless block ~1 ~1 ~ air run tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Cannot build: the pipe position east of you is occupied.","color":"red"}]
execute unless block ~1 ~2 ~ air run tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Cannot build: the input-chest position above the pipe is occupied.","color":"red"}]
execute if block ~ ~1 ~ air if block ~1 ~1 ~ air if block ~1 ~2 ~ air run summon minecraft:marker ~ ~ ~ {Tags:["buildcraft.quarry"],CustomName:'{"text":"BuildCraft Quarry"}'}
execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1,sort=nearest,limit=1] if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:chest
execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1,sort=nearest,limit=1] if block ~1 ~1 ~ air run setblock ~1 ~1 ~ minecraft:hopper[facing=west]
execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1,sort=nearest,limit=1] if block ~1 ~2 ~ air run setblock ~1 ~2 ~ minecraft:chest
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1,sort=nearest,limit=1] run scoreboard players set @s bc_lane 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1,sort=nearest,limit=1] run scoreboard players set @s bc_depth 0
execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1,sort=nearest,limit=1] run tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry online. It mines a 3x3 area downward for 32 layers; drops go to the chest above you.","color":"green"}]
