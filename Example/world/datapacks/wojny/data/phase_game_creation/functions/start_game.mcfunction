# by Azeth Meron
# @s - player trying to start game

scoreboard players set @e[tag=engine] GcRequestStart 1

execute as @a run function tool:clear_chat
execute as @a run function phase_game_creation:display_game_settings

execute if entity @e[tag=engine,scores={RandomTeams=1}] run function phase_game_creation:start_team_randomizing
execute if entity @e[tag=engine,scores={RandomKits=1}] run function phase_game_creation:start_kits_randomizing
execute if entity @e[tag=engine,scores={RandomKits=0}] run execute as @a[scores={InGame=1}] run function phase_game_creation:kit_selection