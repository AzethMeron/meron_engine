# by Azeth Meron
# @s - spawned player

spawnpoint @s ~ ~ ~
function trigger:spawn

# Spawning players (high-level functions)
execute as @s[scores={InGame=-1}] at @s run function progression:spawn_outsider
execute as @s[scores={InGame=0}] at @s run function progression:spawn_lobby
execute as @s[scores={InGame=1}] at @s run function progression:spawn_game_creation
execute as @s[scores={InGame=3}] at @s run function progression:spawn_spectator

# In-game spawning (timed spawning feature is done within internal:loop)
execute as @s[scores={InGame=2}] at @s run execute if entity @e[tag=engine, scores={RespawnTime=1..}, limit=1] run tp @s @e[tag=ingame_respawn_waitroom,limit=1]
execute as @s[scores={InGame=2}] at @s run execute unless entity @e[tag=engine, scores={RespawnTime=1..}, limit=1] run function progression:spawn_ingame
