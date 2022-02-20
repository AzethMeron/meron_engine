# by Azeth Meron

execute as @e[tag=engine] at @s run function internal:variables_in_engine

function progression:reset
execute as @a at @s run function tool:reset_player