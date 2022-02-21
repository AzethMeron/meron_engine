# by Azeth Meron
# @s - player

tellraw @s {"text":"=== KIT SELECTION ===","color":"gold"}	
execute unless entity @a[scores={Kit=1}] run tellraw @s ["",{"text":"Warrior","color":"yellow"},{"text":" ","color":"gold"},{"text":"[select]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:choose_1warrior"}}]
