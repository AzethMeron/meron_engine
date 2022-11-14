# by Azeth Meron
# @s - player
# HP, HpDelta, itr_PrevHP

# HpDelta - value by which player's HP changed since last tick. Negative value means damage received, positive value means healing/regeneration. 
# Note: gained/lost absorption will also appear as HpDelta

scoreboard players operation @s HpDelta = @s HP
scoreboard players operation @s HpDelta -= @s itr_PrevHP
scoreboard players operation @s itr_PrevHP = @s HP