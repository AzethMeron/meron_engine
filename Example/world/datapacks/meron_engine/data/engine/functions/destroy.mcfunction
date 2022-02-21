# by Azeth Meron
# used to safely remove armor stands created with init and set_X functions

execute as @e[tag=persistent] at @s run forceload remove ~ ~
kill @e[tag=persistent]
