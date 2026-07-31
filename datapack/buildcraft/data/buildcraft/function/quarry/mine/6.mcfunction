execute if block ~1 ~ ~-1 minecraft:bedrock run scoreboard players add @s bc_bedrock_count 1
execute unless block ~1 ~ ~-1 minecraft:bedrock run setblock ~1 ~ ~-1 minecraft:air destroy
