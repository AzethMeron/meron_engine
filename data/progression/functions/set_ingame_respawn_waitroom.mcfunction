# by Azeth Meron

execute as @e[tag=ingame_respawn_waitroom] at @s run forceload remove ~ ~
kill @e[tag=ingame_respawn_waitroom]
summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["persistent","ingame_respawn_waitroom"]}
tp @e[tag=ingame_respawn_waitroom] @s
forceload add ~ ~