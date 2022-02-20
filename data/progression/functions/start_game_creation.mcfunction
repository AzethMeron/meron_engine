# by Azeth Meron

# All get InGame=1
scoreboard players set @a InGame 1
scoreboard players set @e[tag=engine] InGame 1

# Host feature
scoreboard players set @a Host 0
scoreboard players set @r Host 1

# Generate Ticket
execute as @e[tag=engine] at @s run function tool:generate_ticket
execute as @a run scoreboard players operation @s Ticket = @e[tag=engine,limit=1] Ticket

# Teleport players to proper rooms - by using respawning
execute as @a run function tool:respawn_player