# by Azeth Meron
# @s - player
# you can get current state of game (InGame variable) by referring to @e[tag=engine]

execute if entity @e[tag=engine,scores={InGame=1..}] run function progression:make_spectator
execute if entity @e[tag=engine,scores={InGame=0}] run function tool:reset_player