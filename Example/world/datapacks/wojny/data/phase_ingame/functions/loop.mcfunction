# by Azeth Meron

# End of the game detection
execute if entity @e[tag=engine, scores={Mode=0}] run function phase_ingame:end_mode_ffa
execute if entity @e[tag=engine, scores={Mode=1}] run function phase_ingame:end_mode_teams