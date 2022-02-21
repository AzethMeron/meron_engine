# by Azeth Meron

scoreboard players add @e[tag=engine] Map 1
scoreboard players set @e[tag=engine,scores={Map=2..}] Map 0
function phase_game_creation:game_settings