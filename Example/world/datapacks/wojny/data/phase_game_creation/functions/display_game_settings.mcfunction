# by Azeth Meron
# this is function displaying chosen settings

# SCOREBOARDS (all are dummy)
# Mode - FFA (0), teams (1). Arcade mode will NOT use this variable, cause it allows to play FFA or teams, so making it Mode=2 would be waste of resources
# Goal - whether it's game for kills (0) or to stay alive (1)
# Score - how many kills to win, or how many lives until you lose. Default: 5
# Map - id of battleground


# Header
tellraw @s ["",{"text":"===== GAME SETTINGS =====","color":"gold"}]

# Game Mode
execute if entity @e[tag=engine, scores={Mode=0}] run tellraw @s ["",{"text":"Mode: FFA ","color":"yellow"}]
execute if entity @e[tag=engine, scores={Mode=1}] run tellraw @s ["",{"text":"Mode: ","color":"yellow"},{"text":"Teams ","color":"gold"}] 

# Game Goal
execute if entity @e[tag=engine, scores={Mode=0}] if entity @e[tag=engine, scores={Goal=0}] run tellraw @s ["",{"text":"Game goal: Kills","color":"yellow"},{"text":" "}]
execute if entity @e[tag=engine, scores={Mode=0}] if entity @e[tag=engine, scores={Goal=1}] run tellraw @s ["",{"text":"Game goal: ","color":"yellow"},{"text":"Lives","color":"gold"},{"text":" ","color":"yellow"}]

# Score
execute if entity @e[tag=engine, scores={Score=5}] run tellraw @s ["",{"text":"Score: ","color":"yellow"},{"score":{"name":"@e[tag=engine,limit=1]","objective":"Score"},"color":"yellow"}]
execute unless entity @e[tag=engine, scores={Score=5}] run tellraw @s ["",{"text":"Score: ","color":"yellow"},{"score":{"name":"@e[tag=engine,limit=1]","objective":"Score"},"color":"gold"}]

# Map 
execute if entity @e[tag=engine, scores={Map=0}] run tellraw @s ["",{"text":"Arena: Residence ","color":"yellow"}]
execute if entity @e[tag=engine, scores={Map=1}] run tellraw @s ["",{"text":"Arena: ","color":"yellow"},{"text":"Underground City","color":"gold"},{"text":" ","color":"yellow"}]

# Health display
execute if entity @e[tag=engine, scores={DisplayHealth=0}] run tellraw @s ["",{"text":"Display health: No ","color":"yellow"}]
execute if entity @e[tag=engine, scores={DisplayHealth=1}] run tellraw @s ["",{"text":"Display health: ","color":"yellow"},{"text":"Yes ","color":"gold"}]
execute if entity @e[tag=engine, scores={DisplayHealth=2}] run tellraw @s ["",{"text":"Display health: ","color":"yellow"},{"text":"Percentage ","color":"gold"}]

# Footnote
#tellraw @s ["",{"text":"==============================","color":"gold"}]
