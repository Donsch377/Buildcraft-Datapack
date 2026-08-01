execute store result score @s bc_y run data get entity @s Pos[1] 1
execute store result score #quarry_y bc_y run data get entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..256,sort=nearest,limit=1] Pos[1] 1
execute unless score @s bc_y = #quarry_y run particle minecraft:angry_villager ~ ~1 ~ 0.2 0.2 0.2 0 3 force
execute unless score @s bc_y = #quarry_y run tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"red"},{"text":"Marker rejected: it must be on the same level as the Quarry.","color":"red"}]
execute unless score @s bc_y = #quarry_y run kill @s
execute if score @s bc_y = #quarry_y run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute if score @s bc_y = #quarry_y run tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Marker accepted. Place the next marker on another blue line from the Quarry.","color":"aqua"}]
