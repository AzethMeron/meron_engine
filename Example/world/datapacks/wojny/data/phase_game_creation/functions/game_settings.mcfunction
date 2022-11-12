# by Azeth Meron

# SCOREBOARDS (all are dummy)
# Mode - FFA (0), teams (1). Arcade mode will NOT use this variable, cause it allows to play FFA or teams, so making it Mode=2 would be waste of resources
# Goal - whether it's game for kills (0) or to stay alive (1)
# Score - how many kills to win, or how many lives until you lose. Default: 5
# Map - id of battleground
# RandomKits - randomize kits (1) or manual selection (0)
# RandomTeams - randomize kits (1) or manual selection (0)

# Header
tellraw @s ["",{"text":"===== GAME CREATION MENU =====","color":"gold"}]

# Game Mode
execute if entity @e[tag=engine, scores={Mode=0}] run tellraw @s ["",{"text":"Mode: FFA ","color":"yellow"},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_mode"}}]
execute if entity @e[tag=engine, scores={Mode=1}] run tellraw @s ["",{"text":"Mode: ","color":"yellow"},{"text":"Teams ","color":"gold"},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_mode"}}] 

# Game Goal
execute if entity @e[tag=engine, scores={Mode=0}] if entity @e[tag=engine, scores={Goal=0}] run tellraw @s ["",{"text":"Game goal: Kills","color":"yellow"},{"text":" "},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_goal"}}]
execute if entity @e[tag=engine, scores={Mode=0}] if entity @e[tag=engine, scores={Goal=1}] run tellraw @s ["",{"text":"Game goal: ","color":"yellow"},{"text":"Lives","color":"gold"},{"text":" ","color":"yellow"},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_goal"}}]

# Score
execute if entity @e[tag=engine, scores={Score=5}] run tellraw @s ["",{"text":"Score: ","color":"yellow"},{"score":{"name":"@e[tag=engine,limit=1]","objective":"Score"},"color":"yellow"},{"text":" ","color":"yellow"},{"text":"[-]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:score_down"}},{"text":" ","color":"yellow"},{"text":"[+]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:score_up"}}]
execute unless entity @e[tag=engine, scores={Score=5}] run tellraw @s ["",{"text":"Score: ","color":"yellow"},{"score":{"name":"@e[tag=engine,limit=1]","objective":"Score"},"color":"gold"},{"text":" ","color":"yellow"},{"text":"[-]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:score_down"}},{"text":" ","color":"yellow"},{"text":"[+]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:score_up"}}]
# https://minecraft.tools/en/tellraw.php?tellraw=<span%20style%3D"color%3A%23FFFF55">Score%3A%26nbsp%3B<%2Fspan><span%20style%3D"color%3A%23FFAA00"><code%20data-player%3D"%40e%5Btag%3Dengine%2Climit%3D1%5D"%20data-objective%3D"Score"%20data-scoreboard%3D"%40e%5Btag%3Dengine%2Climit%3D1%5D§§Score"%20class%3D"scoreboard">%40e%5Btag%3Dengine%2Climit%3D1%5D-%26gt%3BScore<%2Fcode><%2Fspan><span%20style%3D"color%3A%23FFFF55">%20<%2Fspan><span%20style%3D"color%3A%2300AA00"><a%20data-runcommand%3D"%2Ffunction%20phase_game_creation%3Ascore_down"%20class%3D"runcommand"%20href%3D"%2Ffunction%20phase_game_creation%3Ascore_down">%5B-%5D<%2Fa><span%20style%3D"color%3A%23FFFF55">%20<%2Fspan><a%20data-runcommand%3D"%2Ffunction%20phase_game_creation%3Ascore_up"%20class%3D"runcommand"%20href%3D"%2Ffunction%20phase_game_creation%3Ascore_up">%5B%2B%5D<%2Fa><%2Fspan>&selector=%40s

# Map 
execute if entity @e[tag=engine, scores={Map=0}] run tellraw @s ["",{"text":"Arena: Residence ","color":"yellow"},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_map"}}]
execute if entity @e[tag=engine, scores={Map=1}] run tellraw @s ["",{"text":"Arena: ","color":"yellow"},{"text":"Underground City","color":"gold"},{"text":" ","color":"yellow"},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_map"}}]
# https://minecraft.tools/en/tellraw.php?tellraw=<font%20color%3D"%23ffff55">Arena%3A%20<%2Ffont><span%20style%3D"color%3A%23FFAA00">Underground%20City<%2Fspan><font%20color%3D"%23ffff55">%26nbsp%3B<%2Ffont><a%20data-runcommand%3D"%2Ffunction%20phase_game_creation%3Achange_map"%20class%3D"runcommand"%20href%3D"%2Ffunction%20phase_game_creation%3Achange_map"><span%20style%3D"color%3A%2300AA00">%5Bchange%5D<%2Fspan><%2Fa>&selector=%40s

# Health display
execute if entity @e[tag=engine, scores={DisplayHealth=0}] run tellraw @s ["",{"text":"Display health: No ","color":"yellow"},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_display_health"}}]
execute if entity @e[tag=engine, scores={DisplayHealth=1}] run tellraw @s ["",{"text":"Display health: ","color":"yellow"},{"text":"Yes ","color":"gold"},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_display_health"}}]
execute if entity @e[tag=engine, scores={DisplayHealth=2}] run tellraw @s ["",{"text":"Display health: ","color":"yellow"},{"text":"Percentage ","color":"gold"},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_display_health"}}]

# Random kits
execute if entity @e[tag=engine, scores={RandomKits=0}] run tellraw @s ["",{"text":"Kit selection: Manual","color":"yellow"},{"text":" "},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_kit_selection"}}]
execute if entity @e[tag=engine, scores={RandomKits=1}] run tellraw @s ["",{"text":"Kit selection: Random","color":"yellow"},{"text":" "},{"text":"[change]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function phase_game_creation:change_kit_selection"}}]

# Footnote
#tellraw @s ["",{"text":"==============================","color":"gold"}]
