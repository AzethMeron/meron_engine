# by Azeth Meron
# @s - player

# Here goes rest of code, like invincibility

# Display stats
tellraw @s {"text":"=== FINAL STATS ===","color":"gold"}
tellraw @s ["",{"text":"Kills: ","color":"yellow"},{"score":{"name":"@s","objective":"Kills"},"color":"yellow"}]
tellraw @s ["",{"text":"Deaths: ","color":"yellow"},{"score":{"name":"@s","objective":"Deaths"},"color":"yellow"}]