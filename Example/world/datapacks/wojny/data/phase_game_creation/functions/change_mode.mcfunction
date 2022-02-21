# by Azeth Meron

scoreboard players add @e[tag=engine] Mode 1
scoreboard players set @e[tag=engine,scores={Mode=2..}] Mode 0 
function phase_game_creation:game_settings