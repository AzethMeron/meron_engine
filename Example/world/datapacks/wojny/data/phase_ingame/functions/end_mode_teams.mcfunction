# by Azeth Meron

# Kills. Check if any player has >= number of kills to win
execute unless entity @a[scores={Winner=1..}] run execute if score Yellow TeamKills >= @e[tag=engine,limit=1] Score as @a[team=yellow] run scoreboard players set @s Winner 1
execute unless entity @a[scores={Winner=1..}] run execute if score Purple TeamKills >= @e[tag=engine,limit=1] Score as @a[team=purple] run scoreboard players set @s Winner 1

# Winners
execute if entity @a[scores={Winner=1}] as @a run function phase_ingame:game_is_finished
#execute if entity @a[scores={Winner=1}] as @a run tellraw @s ["",{"text":"Winners: ","color":"yellow"},{"selector":"@a[scores={Winner=1..}]","color":"gold"}]
execute if entity @a[scores={Winner=1},team=yellow] as @a run tellraw @s {"text":"Yellow team has won"}
execute if entity @a[scores={Winner=1},team=purple] as @a run tellraw @s {"text":"Purple team has won"}

# Endgame Timer
execute if entity @a[scores={Winner=1}] run scoreboard players set @e[tag=engine] EndgameTimer 200
execute if entity @a[scores={Winner=1}] run scoreboard players set @a Winner 2
scoreboard players remove @e[tag=engine, scores={EndgameTimer=1..}] EndgameTimer 1
execute if entity @e[tag=engine, scores={EndgameTimer=1}] run function main:end_game