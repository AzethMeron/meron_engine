# by Azeth Meron

execute as @e[tag=lobby] at @s run forceload remove ~ ~
kill @e[tag=lobby]
summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["persistent","lobby"]}
tp @e[tag=lobby] @s
forceload add ~ ~