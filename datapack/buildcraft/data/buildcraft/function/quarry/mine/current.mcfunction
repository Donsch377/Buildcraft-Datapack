execute if block ~ ~ ~ minecraft:bedrock run scoreboard players add @s bc_bedrock_count 1
execute unless block ~ ~ ~ minecraft:bedrock unless block ~ ~ ~ minecraft:lodestone unless block ~ ~ ~ minecraft:chest run setblock ~ ~ ~ minecraft:air destroy
