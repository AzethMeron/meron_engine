# by Azeth Meron
# @s - player
# Function used to put player into combat state (InCombat variable set to 1)

scoreboard players operation @s itr_InCombatTik = @e[tag=engine,limit=1] InCombatTikLen
scoreboard players set @s InCombat 1