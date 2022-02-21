# by Azeth Meron

execute as @e[tag=game_creation_waiting] at @s run forceload remove ~ ~
kill @e[tag=game_creation_waiting]
summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["persistent","game_creation_waiting"]}
tp @e[tag=game_creation_waiting] @s
forceload add ~ ~