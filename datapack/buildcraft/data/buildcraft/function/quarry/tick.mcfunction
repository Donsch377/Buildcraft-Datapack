execute as @e[type=minecraft:marker,tag=buildcraft.quarry] at @s unless entity @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512] run function buildcraft:quarry/activate
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head] at @s if score @s bc_paused matches 0 run function buildcraft:quarry/operate
execute as @e[type=minecraft:marker,tag=buildcraft.marker] at @s unless block ~ ~ ~ minecraft:soul_torch run kill @s
