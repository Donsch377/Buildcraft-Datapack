execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 0 run function buildcraft:quarry/mine/0
execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 1 run function buildcraft:quarry/mine/1
execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 2 run function buildcraft:quarry/mine/2
execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 3 run function buildcraft:quarry/mine/3
execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 4 run function buildcraft:quarry/mine/4
execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 5 run function buildcraft:quarry/mine/5
execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 6 run function buildcraft:quarry/mine/6
execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 7 run function buildcraft:quarry/mine/7
execute if score @s bc_depth matches 0..31 if score @s bc_lane matches 8 run function buildcraft:quarry/mine/8
scoreboard players add @s bc_lane 1
execute if score @s bc_lane matches 9 run scoreboard players set @s bc_lane 0
execute if score @s bc_lane matches 0 run scoreboard players add @s bc_depth 1
execute if score @s bc_depth matches 32.. run function buildcraft:quarry/finish
execute as @e[type=minecraft:item,tag=!buildcraft.routed,distance=..4] run tag @s add buildcraft.routed
execute as @e[type=minecraft:item,tag=buildcraft.routed,distance=..4] run function buildcraft:quarry/route_item
