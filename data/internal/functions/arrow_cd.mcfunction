# by Azeth Meron
# @s - player

execute if entity @s[scores={itr_DroppedArrow=1..}] run item replace entity @s hotbar.8 with minecraft:arrow 1

scoreboard players set @s[scores={itr_BowUsed=1.., ArrowIntervalTik=1..}] itr_CooldownTick 1
scoreboard players set @s[scores={itr_CrossBowUsed=1.., ArrowIntervalTik=1..}] itr_CooldownTick 1

scoreboard players set @s[scores={itr_BowUsed=1..}] itr_BowUsed 0
scoreboard players set @s[scores={itr_CrossBowUsed=1..}] itr_CrossBowUsed 0
scoreboard players set @s[scores={itr_DroppedArrow=1..}] itr_DroppedArrow 0

execute if entity @s[scores={itr_CooldownTick=1}] run scoreboard players operation @s Cooldown_Skill_9 = @s ArrowIntervalTik
scoreboard players add @s[scores={itr_CooldownTick=1..}] itr_CooldownTick 1

execute if score @s itr_CooldownTick > @s ArrowIntervalTik run item replace entity @s hotbar.8 with minecraft:arrow 1
execute if score @s itr_CooldownTick > @s ArrowIntervalTik run scoreboard players set @s itr_CooldownTick 0
