execute if entity @e[type=minecraft:marker,tag=buildcraft.quarry] run tellraw @s [{"text":"[BuildCraft] ","color":"gold"},{"text":"Another quarry state exists somewhere in this world. Run /function buildcraft:quarry/remove; cleanup is global.","color":"red"}]
execute unless entity @e[type=minecraft:marker,tag=buildcraft.quarry] align xyz run function buildcraft:quarry/activate
