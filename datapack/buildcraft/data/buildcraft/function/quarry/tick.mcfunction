execute as @e[type=minecraft:marker,tag=buildcraft.quarry] at @s unless block ~ ~ ~ minecraft:lodestone run function buildcraft:quarry/broken
execute as @e[type=minecraft:marker,tag=buildcraft.quarry] at @s unless entity @e[type=minecraft:marker,tag=buildcraft.quarry_head,distance=..512] run function buildcraft:quarry/activate
execute as @e[type=minecraft:marker,tag=buildcraft.quarry] at @s unless entity @e[type=minecraft:marker,tag=buildcraft.quarry_origin,distance=..512] run function buildcraft:quarry/activate
execute as @e[type=minecraft:marker,tag=buildcraft.quarry] at @s unless entity @e[type=minecraft:interaction,tag=buildcraft.quarry_interaction,distance=..2] run function buildcraft:quarry/summon_interaction
execute as @e[type=minecraft:interaction,tag=buildcraft.quarry_interaction] at @s if data entity @s interaction run function buildcraft:quarry/right_click
execute as @e[type=minecraft:marker,tag=buildcraft.quarry] at @s if score @s bc_configured matches ..0 run function buildcraft:quarry/draw_guides
execute as @e[type=minecraft:marker,tag=buildcraft.quarry] at @s if score @s bc_configured matches ..0 run function buildcraft:quarry/auto_configure
execute as @e[type=minecraft:marker,tag=buildcraft.quarry] at @s if score @s bc_configured matches 1 run function buildcraft:quarry/draw_boundary
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head] at @s if score @s bc_paused matches 0 run function buildcraft:quarry/operate
execute as @e[type=minecraft:marker,tag=buildcraft.quarry_head] at @s if score @s bc_paused matches 0 run particle minecraft:electric_spark ~ ~0.5 ~ 0.12 0.12 0.12 0.02 4 force
execute as @e[type=minecraft:marker,tag=buildcraft.marker] at @s unless block ~ ~ ~ minecraft:soul_torch run kill @s
