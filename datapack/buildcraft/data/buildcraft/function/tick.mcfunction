scoreboard players add #clock bc_timer 1
execute if score #clock bc_timer matches 10.. run function buildcraft:quarry/tick
execute if score #clock bc_timer matches 10.. run scoreboard players set #clock bc_timer 0
