tag @s remove buildcraft.inserted
tag @s remove buildcraft.try
data modify storage buildcraft:runtime routed_item set from entity @s Item
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:0b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 0b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:1b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 1b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:2b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 2b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:3b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 3b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:4b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 4b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:5b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 5b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:6b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 6b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:7b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 7b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:8b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 8b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:9b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 9b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:10b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 10b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:11b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 11b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:12b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 12b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:13b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 13b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:14b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 14b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:15b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 15b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:16b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 16b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:17b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 17b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:18b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 18b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:19b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 19b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:20b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 20b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:21b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 21b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:22b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 22b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:23b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 23b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:24b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 24b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:25b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 25b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute unless entity @s[tag=buildcraft.inserted] unless data block ~ ~1 ~ {Items:[{Slot:26b}]} run tag @s add buildcraft.try
execute if entity @s[tag=buildcraft.try] run data modify storage buildcraft:runtime routed_item.Slot set value 26b
execute if entity @s[tag=buildcraft.try] run data modify block ~ ~1 ~ Items append from storage buildcraft:runtime routed_item
execute if entity @s[tag=buildcraft.try] run tag @s add buildcraft.inserted
tag @s remove buildcraft.try
execute if entity @s[tag=buildcraft.inserted] run kill @s
execute unless entity @s[tag=buildcraft.inserted] run tag @s remove buildcraft.routed
