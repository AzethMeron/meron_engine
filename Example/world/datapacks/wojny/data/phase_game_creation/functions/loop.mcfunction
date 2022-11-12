# by Azeth Meron

# team randomization on-demand
execute as @a[scores={RandomizeTeams=1}] run team leave @s
execute as @p[scores={RandomizeTeams=1}] run team join yellow @s
execute as @a[team=yellow] run scoreboard players set @s RandomizeTeams 0
execute as @p[scores={RandomizeTeams=1}] run team join purple @s
execute as @a[team=purple] run scoreboard players set @s RandomizeTeams 0

# kit randomization on-demand
execute as @r[scores={RandomizeKits=1}] run scoreboard players set @s RandomizeKitsTmp 1
execute as @a[scores={RandomizeKitsTmp=1}] run scoreboard players set @s inp_Min 1
execute as @a[scores={RandomizeKitsTmp=1}] run scoreboard players set @s inp_Max 1
execute as @a[scores={RandomizeKitsTmp=1}] run function tool:random
execute as @a[scores={RandomizeKitsTmp=1}] run scoreboard players operation @s Kit = @s out_Random
execute as @a[scores={RandomizeKitsTmp=1}] run scoreboard players set @s tmp 0
execute as @a[scores={InGame=1}] run scoreboard players add @a[scores={RandomizeKitsTmp=1}] tmp 1
execute as @a[scores={RandomizeKitsTmp=1}] run execute if entity @s[scores={tmp=1}] run scoreboard players set @s RandomizeKits 0
execute as @a[scores={RandomizeKitsTmp=1}] run scoreboard players set @s RandomizeKitsTmp 0

# starting game
execute if entity @e[tag=engine, scores={GcRequestStart=1}] unless entity @a[scores={InGame=1,Kit=0}] unless entity @a[scores={InGame=1,RandomizeTeams=1}] unless entity @a[scores={InGame=1,RandomizeKits=1}] run function main:start_game
