# by Azeth Meron
# @s - entity

scoreboard players set @s inp_Min 100
scoreboard players set @s inp_Max 65535
execute at @s run function tool:random
scoreboard players operation @s Ticket = @s out_Random