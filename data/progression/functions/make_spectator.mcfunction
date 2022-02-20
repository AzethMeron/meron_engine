# by Azeth Meron
# @s - player

scoreboard players set @s InGame 3
scoreboard players operation @s Ticket = @e[tag=engine,limit=1] Ticket 
gamemode spectator @s