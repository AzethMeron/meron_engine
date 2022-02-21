# by Azeth Meron
# @s - player who killed

scoreboard players add @s Kills 1
execute if entity @e[tag=engine, scores={Mode=1}] if entity @s[team=yellow] run scoreboard players add Yellow TeamKills 1
execute if entity @e[tag=engine, scores={Mode=1}] if entity @s[team=purple] run scoreboard players add Purple TeamKills 1