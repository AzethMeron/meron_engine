# by Azeth Meron
# itr_pKillCount playerKillCount
# itr_deathCount deathCount
# @s - engine entity

# each tick
function trigger:each_tick

# each second
execute if entity @s[scores={itr_timer=0}] run function trigger:each_second
scoreboard players add @s itr_timer 1
scoreboard players set @s[scores={itr_timer=20..}] itr_timer 0

# multikill prevention part 2
execute as @a[scores={MultiKillPrevent=1,itr_MultiKillTik=1..}] at @s run scoreboard players set @s itr_pKillCount 0

# on kill
execute as @a[scores={itr_pKillCount=1..}] at @s run function trigger:on_kill

# on death
execute as @a[scores={itr_deathCount=1..}] at @s run function trigger:on_death

# killing spree
scoreboard players remove @a[scores={itr_KillSpreeTim=1..}] itr_KillSpreeTim 1
scoreboard players set @a[scores={itr_KillSpreeTim=..0}] itr_KillSpree 0
scoreboard players set @a[scores={itr_pKillCount=1..}] itr_KillSpreeTim 200
scoreboard players add @a[scores={itr_pKillCount=1..,InGame=2}] itr_KillSpree 1
execute as @a[scores={itr_pKillCount=1..}] at @s run function trigger:killing_spree

# death message, should support kills added by increasing itr_pKillCount by commands
scoreboard players add @a[scores={MessageDeath=1..}] MessageDeath 1
execute as @a[scores={itr_pKillCount=1..}] at @s run scoreboard players set @s MessageKill 1
execute as @a[scores={itr_deathCount=1..}] at @s run scoreboard players set @s MessageDeath 1
execute store result score @s itr_temp run gamerule showDeathMessages
execute if entity @s[scores={itr_temp=0}] as @a[scores={MessageDeath=2}] at @s run function trigger:death_message
execute as @a[scores={MessageDeath=2..}] at @s run scoreboard players set @p[scores={MessageKill=1}] MessageKill 0
scoreboard players set @a[scores={MessageDeath=2..}] MessageDeath 0

# multikill prevention part 1
execute as @a[scores={MultiKillPrevent=1}] at @s if entity @s[scores={itr_pKillCount=1..}] run scoreboard players set @s itr_MultiKillTik 1
execute as @a[scores={MultiKillPrevent=1,itr_MultiKillTik=1..}] at @s run scoreboard players add @s itr_MultiKillTik 1
execute as @a[scores={MultiKillPrevent=1,itr_MultiKillTik=10..}] at @s run scoreboard players set @s itr_MultiKillTik 0

# pop scoreboards
scoreboard players remove @a[scores={itr_pKillCount=1..}] itr_pKillCount 1
scoreboard players remove @a[scores={itr_deathCount=1..}] itr_deathCount 1

