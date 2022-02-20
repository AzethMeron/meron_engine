# by Azeth Meron
# @s - player

scoreboard players set @s itr_temp 100

# HPercentage = (HP * 100) / MaxHP [%]
scoreboard players operation @s HPercentage = @s HP
scoreboard players operation @s HPercentage *= @s itr_temp
scoreboard players operation @s HPercentage /= @s MaxHP