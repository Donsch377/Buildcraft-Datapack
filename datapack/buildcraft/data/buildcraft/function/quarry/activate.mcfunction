execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..1] run summon minecraft:marker ~ ~ ~ {Tags:["buildcraft.quarry"],CustomName:'{"text":"BuildCraft Quarry"}'}
execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..1] run summon minecraft:marker ~ ~-1 ~ {Tags:["buildcraft.quarry_head"],CustomName:'{"text":"BuildCraft Quarry Head"}'}
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..1,sort=nearest,limit=1] run scoreboard players set @s bc_lane 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..1,sort=nearest,limit=1] run scoreboard players set @s bc_depth 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..1,sort=nearest,limit=1] run scoreboard players set @s bc_bedrock_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..1,sort=nearest,limit=1] run scoreboard players set @s bc_paused 0
execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:chest
execute if block ~1 ~1 ~ air run setblock ~1 ~1 ~ minecraft:hopper[facing=west]
execute if block ~1 ~2 ~ air run setblock ~1 ~2 ~ minecraft:chest
data merge block ~ ~ ~ {CustomName:'{"text":"BuildCraft Quarry","color":"gold"}'}
execute unless entity @e[type=minecraft:item_display,tag=buildcraft.quarry_visual,distance=..1] run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {item:{id:"minecraft:barrel",count:1,components:{"minecraft:item_model":"buildcraft:quarry"}},item_display:"fixed",Tags:["buildcraft.quarry_visual"]}
tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry deployed. The chest above is the output and the hopper/input chest are the pipe connection.","color":"green"}]
