# by Azeth Meron
# @s - player

# FFA
execute if entity @e[tag=engine, scores={Mode=0}] run tp @s @e[tag=ArenaSpawn,sort=random,limit=1]

# Teams
execute if entity @e[tag=engine, scores={Mode=1}] if entity @s[team=yellow] run tp @s @e[tag=ArenaYellowSpawn,sort=random,limit=1]
execute if entity @e[tag=engine, scores={Mode=1}] if entity @s[team=purple] run tp @s @e[tag=ArenaPurpleSpawn,sort=random,limit=1]