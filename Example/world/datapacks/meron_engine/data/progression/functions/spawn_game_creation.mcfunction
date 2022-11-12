# by Azeth Meron
# @s - player

execute if entity @s[scores={Host=0}] run tp @s @e[tag=game_creation_waiting,limit=1]
execute if entity @s[scores={Host=1}] run tp @s @e[tag=game_creation,limit=1]
function phase_game_creation:spawn