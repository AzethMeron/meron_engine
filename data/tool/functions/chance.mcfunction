# by Azeth Meron
# @s - input/output entity
# inp_Chance, out_Chance

# How to use:
# scoreboard players set @a inp_Chance 75
# execute as @a at @s run tool:chance
# This way, all players will have out_Chance set to either 1 or 0.
# inp_Chance stands for percentage chance, 75% means 3 in 4 times it will return true (1)

# Warning: It overrides inp_Min, inp_Max and out_Random scores for @s entity

scoreboard players set @s inp_Min 1
scoreboard players set @s inp_Max 100
function tool:random
scoreboard players set @s out_Chance 0
execute if score @s out_Random <= @s inp_Chance run scoreboard players set @s out_Chance 1
