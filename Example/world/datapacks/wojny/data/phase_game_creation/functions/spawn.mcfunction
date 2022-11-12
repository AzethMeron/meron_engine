# by Azeth Meron
# @s - player

execute if entity @e[tag=engine, scores={GcRequestStart=1, RandomKits=0}] if entity @s[scores={InGame=1, Kit=0}] run function phase_game_creation:kit_selection