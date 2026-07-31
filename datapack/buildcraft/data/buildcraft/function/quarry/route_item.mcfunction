execute if block ~ ~1 ~ minecraft:chest run function buildcraft:quarry/route_item_to_chest
execute unless block ~ ~1 ~ minecraft:chest run tag @s remove buildcraft.routed
