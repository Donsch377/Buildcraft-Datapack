# Prevent a second hidden quarry head from processing this same entity in
# the current game tick. The tag is cleared at the start of the next tick.
tag @s add buildcraft.route_cooldown
data modify storage buildcraft:runtime routed_item set from entity @s Item
execute unless data storage buildcraft:runtime routed_item.components run data modify storage buildcraft:runtime routed_item.components set value {}
execute store success score @s bc_inserted run function buildcraft:quarry/insert_item with storage buildcraft:runtime routed_item
execute if score @s bc_inserted matches 1 run kill @s
execute unless score @s bc_inserted matches 1 run tag @s remove buildcraft.routed
