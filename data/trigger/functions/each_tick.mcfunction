# by Azeth Meron

# Fake Blocks
#summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"white_concrete"},NoGravity:1,Time:1,Tags:["FAKE_BLOCK"]}
execute as @e[type=minecraft:falling_block,tag=FAKE_BLOCK] run data merge entity @s {Time:1}