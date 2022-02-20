# by Azeth Meron

# All except spectators and outsiders get InGame=2
execute as @a unless entity @s[scores={InGame=3}] unless entity @s[scores={InGame=-1}] run scoreboard players set @s InGame 2
scoreboard players set @e[tag=engine] InGame 2

# Generate Ticket
execute as @e[tag=engine] at @s run function tool:generate_ticket
execute as @a run scoreboard players operation @s Ticket = @e[tag=engine,limit=1] Ticket

# Teleport everybody to spawn
execute as @a run function tool:respawn_player