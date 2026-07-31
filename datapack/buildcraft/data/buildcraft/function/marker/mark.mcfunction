data merge block ~ ~ ~ {Tags:["buildcraft.marker"]}
execute unless entity @e[type=minecraft:marker,tag=buildcraft.marker,distance=..1] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["buildcraft.marker"],CustomName:'{"text":"Lapis Quarry Marker"}'}
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Lapis quarry marker placed.","color":"aqua"}]
