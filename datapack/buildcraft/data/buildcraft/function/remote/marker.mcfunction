execute at @e[type=minecraft:marker,tag=buildcraft.marker,distance=..3,sort=nearest,limit=1] run particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 0.1 12 force
tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Lapis quarry marker selected. Place these as landmarks around your planned quarry area.","color":"aqua"}]
