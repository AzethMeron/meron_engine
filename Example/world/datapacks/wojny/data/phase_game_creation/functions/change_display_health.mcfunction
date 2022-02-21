# by Azeth Meron

scoreboard players add @e[tag=engine] DisplayHealth 1
scoreboard players set @e[tag=engine,scores={DisplayHealth=3..}] DisplayHealth 0

function phase_game_creation:game_settings