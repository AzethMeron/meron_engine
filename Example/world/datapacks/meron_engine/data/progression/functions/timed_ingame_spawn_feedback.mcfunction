# by Azeth Meron
# @s - player

# Used only if Timed Ingame Spawn feature is used
# During respawning, this function is called every tick, for each of respawning players
# You can see how much time (ticks) is left by accessing scoreboard 'RespawnTimeLeft' in @s player
# Typically, it's used to show user feedback (how much time left until respawn)

# Calculating time in seconds
scoreboard players operation @s RespawnSecLeft = @s RespawnTimeLeft
scoreboard players operation @s RespawnSecLeft /= @s TPS
scoreboard players add @s RespawnSecLeft 1

# Default display
execute as @s[scores={RespawnTimeLeft=2..}] run title @s times 0 50 0
execute as @s[scores={RespawnTimeLeft=2..}] run title @s title {"text":" "}
execute as @s[scores={RespawnTimeLeft=2..}] run title @s subtitle ["",{"text":"Respawning in","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"RespawnSecLeft"},"color":"blue"}]

# Clearing at the end
execute as @s[scores={RespawnTimeLeft=1}] run title @s times 0 40 10
execute as @s[scores={RespawnTimeLeft=1}] run title @s title {"text":" "}
execute as @s[scores={RespawnTimeLeft=1}] run title @s subtitle {"text":" "}