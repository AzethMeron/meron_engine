# by Azeth Meron

scoreboard players add @e[tag=engine] Goal 1
scoreboard players set @e[tag=engine,scores={Goal=2..}] Goal 0 
function phase_game_creation:game_settings