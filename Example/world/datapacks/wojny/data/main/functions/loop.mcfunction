# by Azeth Meron

effect give @a minecraft:saturation 999999 0 true

execute if entity @e[tag=engine,scores={InGame=0}] run function phase_lobby:loop
execute if entity @e[tag=engine,scores={InGame=1}] run function phase_game_creation:loop
execute if entity @e[tag=engine,scores={InGame=2}] run function phase_ingame:loop
