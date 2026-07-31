scoreboard objectives add bc_timer dummy
scoreboard objectives add bc_lane dummy
scoreboard objectives add bc_depth dummy
scoreboard objectives add bc_bedrock_count dummy
scoreboard objectives add bc_paused dummy
scoreboard objectives add bc_toggle dummy
scoreboard objectives add bc_min_x dummy
scoreboard objectives add bc_max_x dummy
scoreboard objectives add bc_min_z dummy
scoreboard objectives add bc_max_z dummy
scoreboard objectives add bc_x dummy
scoreboard objectives add bc_z dummy
scoreboard objectives add bc_width dummy
scoreboard objectives add bc_length dummy
scoreboard objectives add bc_area dummy
scoreboard objectives add bc_row dummy
scoreboard objectives add bc_col dummy
scoreboard objectives add bc_move dummy
scoreboard objectives add bc_marker_count dummy
scoreboard players set #clock bc_timer 0
tellraw @a [{"text":"[BuildCraft] ","color":"gold"},{"text":"loaded. Run /function buildcraft:give for setup help.","color":"yellow"}]
