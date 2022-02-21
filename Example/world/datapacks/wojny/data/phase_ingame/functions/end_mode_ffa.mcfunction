# by Azeth Meron

# Kills. Check if any player has >= number of kills to win
execute unless entity @a[scores={Winner=1..}] if entity @e[tag=engine, scores={Goal=0}] run execute as @a if score @s Kills >= @e[tag=engine,limit=1] Score run scoreboard players set @s Winner 1

# Deaths. Get number of players with Lives>=1. If that number=1, then the last one standing wins. If number=0, something went terribly wrong
execute unless entity @a[scores={Winner=1..}] if entity @e[tag=engine, scores={Goal=1}] as @e[tag=engine] run execute store result score @s tmp run execute if entity @a[scores={Lives=1..}]
execute unless entity @a[scores={Winner=1..}] if entity @e[tag=engine, scores={Goal=1}] if entity @e[tag=engine, scores={tmp=1}] run scoreboard players set @a[scores={Lives=1..}] Winner 1
execute unless entity @a[scores={Winner=1..}] if entity @e[tag=engine, scores={Goal=1}] if entity @e[tag=engine, scores={tmp=0}] run function tool:reset

# Winners
execute if entity @a[scores={Winner=1}] as @a run function phase_ingame:game_is_finished
execute if entity @a[scores={Winner=1}] as @a run tellraw @s ["",{"text":"Winner: ","color":"yellow"},{"selector":"@a[scores={Winner=1..}]","color":"gold"}]

# Endgame Timer
execute if entity @a[scores={Winner=1}] run scoreboard players set @e[tag=engine] EndgameTimer 200
execute if entity @a[scores={Winner=1}] run scoreboard players set @a Winner 2
scoreboard players remove @e[tag=engine, scores={EndgameTimer=1..}] EndgameTimer 1
execute if entity @e[tag=engine, scores={EndgameTimer=1}] run function main:end_game