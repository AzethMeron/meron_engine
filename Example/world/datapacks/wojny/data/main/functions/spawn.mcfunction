# by Azeth Meron
# Triggered any time player is spawned, ignoring which phase it's in

execute if entity @e[tag=engine, scores={Goal=1}] if entity @s[scores={InGame=2, Lives=0}] run function progression:make_spectator