execute unless entity @e[type=minecraft:marker,tag=buildcraft.marker,distance=..1] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["buildcraft.marker"],CustomName:'{"text":"Lapis Quarry Marker"}'}
particle minecraft:sonic_boom ~0.5 ~1 ~0.5 0 0 0 0 1 force
tellraw @a[distance=..8] [{"text":"[BuildCraft] ","color":"gold"},{"text":"Lapis Quarry Marker placed. Follow the next blue line; two markers lock the boundary.","color":"aqua"}]
