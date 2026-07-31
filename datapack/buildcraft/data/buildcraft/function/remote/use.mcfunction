advancement revoke @s only buildcraft:used_remote
execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..3,sort=nearest,limit=1] as @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..3,sort=nearest,limit=1] at @s run function buildcraft:remote/toggle
execute if entity @e[type=minecraft:marker,tag=buildcraft.marker,distance=..3,sort=nearest,limit=1] run function buildcraft:remote/marker
execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..3,limit=1] unless entity @e[type=minecraft:marker,tag=buildcraft.marker,distance=..3,limit=1] run tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Point the Quarry Remote at a quarry or lapis marker.","color":"yellow"}]
