tag @s remove buildcraft.inserted
tag @s remove buildcraft.try
data modify storage buildcraft:runtime routed_item set from entity @s Item
execute store result score @s bc_item_count run data get entity @s Item.count 1
data modify storage buildcraft:runtime routed_item.count set value 1
execute unless data storage buildcraft:runtime routed_item.components run data modify storage buildcraft:runtime routed_item.components set value {}
execute store success score @s bc_inserted run function buildcraft:quarry/insert_item with storage buildcraft:runtime routed_item
execute if score @s bc_inserted matches 1 run scoreboard players remove @s bc_item_count 1
execute if score @s bc_inserted matches 1 if score @s bc_item_count matches 1.. run execute store result entity @s Item.count int 1 run scoreboard players get @s bc_item_count
execute if score @s bc_inserted matches 1 if score @s bc_item_count matches 0 run kill @s
execute unless score @s bc_inserted matches 1 run tag @s remove buildcraft.routed
