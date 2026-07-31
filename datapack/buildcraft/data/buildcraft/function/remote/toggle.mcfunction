execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] run scoreboard players operation @s bc_toggle = @s bc_paused
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] if score @s bc_toggle matches 0 run scoreboard players set @s bc_paused 1
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,sort=nearest,limit=1] if score @s bc_toggle matches 1 run scoreboard players set @s bc_paused 0
execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,scores={bc_paused=1},limit=1] run tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry paused.","color":"yellow"}]
execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512,scores={bc_paused=0},limit=1] run tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Quarry resumed.","color":"green"}]
