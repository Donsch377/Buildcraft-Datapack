execute if score @s bc_col matches 0 if score @s bc_row matches 0 run scoreboard players set @s bc_bedrock_count 0
function buildcraft:quarry/mine/current

# Route drops while @s remains the item, but execute the insertion at the
# quarry anchor so ~ ~1 ~ is always the output chest.
execute as @e[type=minecraft:item,tag=!buildcraft.routed,distance=..3] run tag @s add buildcraft.routed
execute as @e[type=minecraft:item,tag=buildcraft.routed,distance=..3] at @e[type=minecraft:marker,tag=buildcraft.quarry,sort=nearest,limit=1,distance=..512] run function buildcraft:quarry/route_item

scoreboard players add @s bc_col 1
execute if score @s bc_col < @s bc_width run tp @s ~1 ~ ~
execute if score @s bc_col = @s bc_width run function buildcraft:quarry/next_row
