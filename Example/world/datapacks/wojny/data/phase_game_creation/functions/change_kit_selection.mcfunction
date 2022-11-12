# by Azeth Meron

scoreboard players add @e[tag=engine] RandomKits 1
scoreboard players set @e[tag=engine,scores={RandomKits=2..}] RandomKits 0 
function phase_game_creation:game_settings