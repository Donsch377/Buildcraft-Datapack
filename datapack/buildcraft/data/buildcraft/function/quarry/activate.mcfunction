# The Quarry marker is the machine anchor. The head is always placed below it
# and is the only entity that moves while mining.
execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["buildcraft.quarry"],CustomName:'{"text":"BuildCraft Quarry"}'}
kill @e[type=minecraft:marker,tag=buildcraft.quarry_head]
kill @e[type=minecraft:marker,tag=buildcraft.quarry_origin]
kill @e[type=minecraft:marker,tag=buildcraft.quarry_boundary_origin]
kill @e[type=minecraft:marker,tag=buildcraft.setup_x]
kill @e[type=minecraft:marker,tag=buildcraft.setup_z]
kill @e[type=minecraft:marker,tag=buildcraft.marker]
execute at @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["buildcraft.quarry_head"],CustomName:'{"text":"BuildCraft Quarry Head"}'}
kill @e[type=minecraft:interaction,tag=buildcraft.quarry_interaction,distance=..2]
execute at @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] run function buildcraft:quarry/summon_interaction

execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] run scoreboard players set @s bc_configured 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] store result score @s bc_x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] store result score @s bc_z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] run scoreboard players set @s bc_width 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] run scoreboard players set @s bc_length 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] run scoreboard players set @s bc_area 0

execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,sort=nearest,limit=1] run scoreboard players set @s bc_width 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,sort=nearest,limit=1] run scoreboard players set @s bc_length 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,sort=nearest,limit=1] run scoreboard players set @s bc_area 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,sort=nearest,limit=1] run scoreboard players set @s bc_row 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,sort=nearest,limit=1] run scoreboard players set @s bc_col 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,sort=nearest,limit=1] run scoreboard players set @s bc_bedrock_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,sort=nearest,limit=1] run scoreboard players set @s bc_depth 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..4,sort=nearest,limit=1] run scoreboard players set @s bc_paused 1

execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:chest
tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry waiting. Follow the blue lines with two markers. Right-click the Quarry for status.","color":"yellow"}]
