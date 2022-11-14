# by Azeth Meron
# @s - player which stats must be initiated

scoreboard players set @s itr_pKillCount 0
scoreboard players set @s itr_deathCount 0
scoreboard players set @s itr_KillSpree 0
scoreboard players set @s itr_KillSpreeTim 0

scoreboard players set @s out_Random 0
scoreboard players set @s inp_Min 0
scoreboard players set @s inp_Max 0
scoreboard players set @s itr_temp 0

scoreboard players set @s InGame 0
scoreboard players set @s Host 0
scoreboard players set @s Ticket 0

scoreboard players set @s itr_joined 1

scoreboard players set @s itr_regen 0
scoreboard players set @s RegenIntervalTik 0

scoreboard players set @s RespawnTimeLeft 0

scoreboard players set @s HPercentage 0
scoreboard players set @s MaxHP 0

scoreboard players set @s itr_DroppedArrow 0
scoreboard players set @s itr_BowUsed 0
scoreboard players set @s itr_CrossBowUsed 0
scoreboard players set @s itr_CooldownTick 0
scoreboard players set @s ArrowIntervalTik 0

scoreboard players set @s itr_LeftServer 0

scoreboard players set @s itr_MultiKillTik 0
scoreboard players set @s MultiKillPrevent 0

scoreboard players set @s Cooldown_Skill_1 0
scoreboard players set @s Cooldown_Skill_2 0
scoreboard players set @s Cooldown_Skill_3 0
scoreboard players set @s Cooldown_Skill_4 0
scoreboard players set @s Cooldown_Skill_5 0
scoreboard players set @s Cooldown_Skill_6 0
scoreboard players set @s Cooldown_Skill_7 0
scoreboard players set @s Cooldown_Skill_8 0
scoreboard players set @s Cooldown_Skill_9 0
scoreboard players set @s Cooldown_Skill_O 0
scoreboard players set @s Cooldown_Skill_a 0
scoreboard players set @s Cooldown_Skill_b 0
scoreboard players set @s Cooldown_Skill_c 0
scoreboard players set @s Cooldown_Skill_d 0

scoreboard players set @s HpDelta 0
scoreboard players set @s itr_PrevHP 0

scoreboard players set @s MessageKill 0
scoreboard players set @s MessageDeath 0

scoreboard players set @s DamageDealt 0
scoreboard players set @s DamageTaken 0
scoreboard players set @s InCombat 0

function trigger:initiate_stats
