# by Azeth Meron

setworldspawn ~ ~ ~
execute as @e[tag=first_spawn] at @s run forceload remove ~ ~
kill @e[tag=first_spawn]
summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["persistent","first_spawn"]}
forceload add ~ ~