# by Azeth Meron

# team randomization on-demand
execute as @a[scores={RandomizeTeams=1}] run team leave @s
execute as @p[scores={RandomizeTeams=1}] run team join yellow @s
execute as @a[team=yellow] run scoreboard players set @s RandomizeTeams 0
execute as @p[scores={RandomizeTeams=1}] run team join purple @s
execute as @a[team=purple] run scoreboard players set @s RandomizeTeams 0

# starting game
execute if entity @e[tag=engine, scores={GcRequestStart=1}] unless entity @a[scores={InGame=1,Kit=0}] unless entity @a[scores={InGame=1,RandomizeTeams=1}] run function main:start_game
