execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..8] run tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"There is already a quarry nearby.","color":"red"}]
execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..8] run function buildcraft:quarry/create_new
