# Macro values are copied from the entire mined item stack in
# route_item_to_chest. /loot insert uses normal container insertion,
# including stack merging.
$loot insert ~ ~1 ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)",functions:[{function:"minecraft:set_count",count:$(count)},{function:"minecraft:set_components",components:$(components)}]}]}]}
