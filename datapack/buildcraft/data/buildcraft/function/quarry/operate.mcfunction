# Refuse to move if corrupt or missing dimensions would let the head escape.
execute unless score @s bc_width matches 1..64 run scoreboard players set @s bc_paused 1
execute unless score @s bc_length matches 1..64 run scoreboard players set @s bc_paused 1
execute if score @s bc_paused matches 0 run function buildcraft:quarry/operate_step
