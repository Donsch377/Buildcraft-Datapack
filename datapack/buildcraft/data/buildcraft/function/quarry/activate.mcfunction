# The quarry block is the machine anchor. The origin moves down one block after
# every completed layer; the head scans only inside the configured rectangle.
execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["buildcraft.quarry"],CustomName:'{"text":"BuildCraft Quarry"}'}
kill @e[type=minecraft:marker,tag=buildcraft.quarry_head]
kill @e[type=minecraft:marker,tag=buildcraft.quarry_origin]
summon minecraft:marker ~-0.5 ~-0.5 ~-0.5 {Tags:["buildcraft.quarry_origin"],CustomName:'{"text":"BuildCraft Quarry Origin"}'}
summon minecraft:marker ~-0.5 ~-0.5 ~-0.5 {Tags:["buildcraft.quarry_head"],CustomName:'{"text":"BuildCraft Quarry Head"}'}

execute as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..2,sort=nearest,limit=1] run scoreboard players set @s bc_configured 0
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
tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry waiting. It is the fourth corner; place exactly three markers at the other corners.","color":"yellow"}]
