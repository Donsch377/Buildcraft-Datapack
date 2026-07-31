scoreboard objectives add bc_timer dummy
scoreboard objectives add bc_lane dummy
scoreboard objectives add bc_depth dummy
scoreboard objectives add bc_bedrock_count dummy
scoreboard objectives add bc_paused dummy
scoreboard objectives add bc_toggle dummy
scoreboard players set #clock bc_timer 0
tellraw @a [{"text":"[BuildCraft] ","color":"gold"},{"text":"loaded. Run /function buildcraft:give for setup help.","color":"yellow"}]
