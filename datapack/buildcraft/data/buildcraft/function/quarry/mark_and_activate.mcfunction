execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry] run tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Only one quarry can run at a time in this prototype. Use /function buildcraft:quarry/remove first.","color":"red"}]
execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry] align xyz run function buildcraft:quarry/activate
