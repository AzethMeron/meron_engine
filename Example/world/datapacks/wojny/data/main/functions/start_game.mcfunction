# by Azeth Meron

execute as @a run function tool:clear_chat
execute as @a run function kits:all
execute as @a run function phase_game_creation:display_game_settings
function battlegrounds:all

execute if entity @e[tag=engine, scores={Mode=0}] if entity @e[tag=engine, scores={Goal=1}] run scoreboard players operation @a Lives = @e[tag=engine, limit=1] Score
execute if entity @e[tag=engine, scores={Mode=0}] if entity @e[tag=engine, scores={Goal=1}] run scoreboard objectives setdisplay sidebar Lives
execute if entity @e[tag=engine, scores={Mode=0}] if entity @e[tag=engine, scores={Goal=0}] run scoreboard objectives setdisplay sidebar Kills
execute if entity @e[tag=engine, scores={Mode=1}] run scoreboard objectives setdisplay sidebar TeamKills

execute if entity @e[tag=engine, scores={DisplayHealth=0}] run scoreboard objectives setdisplay belowName 
execute if entity @e[tag=engine, scores={DisplayHealth=1}] run scoreboard objectives setdisplay belowName HP
execute if entity @e[tag=engine, scores={DisplayHealth=2}] run scoreboard objectives setdisplay belowName HPercentage

function progression:start_game