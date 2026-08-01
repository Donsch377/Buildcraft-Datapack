scoreboard players set #x_count bc_marker_count 0
scoreboard players set #z_count bc_marker_count 0
execute as @e[type=minecraft:marker,tag=buildcraft.setup_x,distance=..256] run scoreboard players add #x_count bc_marker_count 1
execute as @e[type=minecraft:marker,tag=buildcraft.setup_z,distance=..256] run scoreboard players add #z_count bc_marker_count 1
tellraw @s [{"text":"[BuildCraft Quarry]","color":"gold","bold":true}]
tellraw @s [{"text":"Guide torches on X axis: ","color":"gray"},{"score":{"name":"#x_count","objective":"bc_marker_count"},"color":"aqua"},{"text":"  |  Z axis: ","color":"gray"},{"score":{"name":"#z_count","objective":"bc_marker_count"},"color":"aqua"}]
execute if score @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..3,sort=nearest,limit=1] bc_configured matches 0 if score #x_count bc_marker_count matches 0 if score #z_count bc_marker_count matches 0 run tellraw @s [{"text":"WAITING: ","color":"yellow","bold":true},{"text":"Place one torch on an X guide and one on a Z guide.","color":"yellow"}]
execute if score @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..3,sort=nearest,limit=1] bc_configured matches 0 unless score #x_count bc_marker_count matches 1 if score #z_count bc_marker_count matches 1 run tellraw @s [{"text":"WAITING: ","color":"yellow","bold":true},{"text":"The X guide needs exactly one torch.","color":"yellow"}]
execute if score @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..3,sort=nearest,limit=1] bc_configured matches 0 if score #x_count bc_marker_count matches 1 unless score #z_count bc_marker_count matches 1 run tellraw @s [{"text":"WAITING: ","color":"yellow","bold":true},{"text":"The Z guide needs exactly one torch.","color":"yellow"}]
execute if score @e[type=minecraft:marker,tag=buildcraft.quarry,distance=..3,sort=nearest,limit=1] bc_configured matches 1 run function buildcraft:quarry/status_running
