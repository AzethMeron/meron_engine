# by Azeth Meron
# @s - player

# itr_regen - dummy, ticking clock
# RegenIntervalTik - dummy, set by "user", inverval in ticks between applies of regeneration

scoreboard players add @s[scores={RegenIntervalTik=1..}] itr_regen 1

execute if entity @s[scores={RegenIntervalTik=1..}] if score @s itr_regen >= @s RegenIntervalTik run effect give @s minecraft:regeneration 1 2 true
execute if entity @s[scores={RegenIntervalTik=1..}] if score @s itr_regen >= @s RegenIntervalTik run scoreboard players set @s itr_regen 0
