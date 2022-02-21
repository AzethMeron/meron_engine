# by Azeth Meron
# @s - player who died

execute if entity @s[scores={Lives=1..}] run scoreboard players remove @s Lives 1
scoreboard players add @s Deaths 1