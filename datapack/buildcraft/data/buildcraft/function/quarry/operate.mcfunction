execute if score @s bc_col matches 0 if score @s bc_row matches 0 run scoreboard players set @s bc_bedrock_count 0
function buildcraft:quarry/mine/current
scoreboard players add @s bc_col 1
execute if score @s bc_col < @s bc_width run tp @s ~1 ~ ~
execute if score @s bc_col = @s bc_width run function buildcraft:quarry/next_row
execute au×o-¢G§²ÚîÆ­yÖate
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:dropper run function buildcraft:quarry/mark_and_activate
