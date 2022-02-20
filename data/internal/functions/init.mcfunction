# by Azeth Meron

# Set gamerules
function internal:gamerules

# Create variables
scoreboard objectives add itr_pKillCount playerKillCount
scoreboard objectives add itr_deathCount deathCount
scoreboard objectives add itr_timer dummy
scoreboard objectives add out_Random dummy
scoreboard objectives add itr_KillSpree dummy
scoreboard objectives add itr_KillSpreeTim dummy
scoreboard objectives add inp_Min dummy
scoreboard objectives add inp_Max dummy
scoreboard objectives add itr_temp dummy
scoreboard objectives add HP health
scoreboard objectives add InGame dummy
scoreboard objectives add Host dummy
scoreboard objectives add RespawnTime dummy
scoreboard objectives add RespawnTimeLeft dummy
scoreboard objectives add Ticket dummy
scoreboard objectives add itr_joined dummy
scoreboard objectives add itr_regen dummy
scoreboard objectives add RegenIntervalTik dummy
scoreboard objectives add HPercentage dummy
scoreboard objectives add MaxHP dummy
scoreboard objectives add itr_BowUsed minecraft.used:minecraft.bow
scoreboard objectives add itr_CrossBowUsed minecraft.used:minecraft.crossbow
scoreboard objectives add itr_DroppedArrow minecraft.dropped:minecraft.arrow
scoreboard objectives add ArrowIntervalTik dummy
scoreboard objectives add itr_CooldownTick dummy
scoreboard objectives add itr_LeftServer minecraft.custom:minecraft.leave_game

scoreboard objectives add itr_MultiKillTik dummy
scoreboard objectives add MultiKillPrevent dummy

scoreboard objectives add Cooldown_Skill_1 dummy
scoreboard objectives add Cooldown_Skill_2 dummy
scoreboard objectives add Cooldown_Skill_3 dummy
scoreboard objectives add Cooldown_Skill_4 dummy
scoreboard objectives add Cooldown_Skill_5 dummy
scoreboard objectives add Cooldown_Skill_6 dummy
scoreboard objectives add Cooldown_Skill_7 dummy
scoreboard objectives add Cooldown_Skill_8 dummy
scoreboard objectives add Cooldown_Skill_9 dummy
scoreboard objectives add Cooldown_Skill_O dummy
scoreboard objectives add Cooldown_Skill_a dummy
scoreboard objectives add Cooldown_Skill_b dummy
scoreboard objectives add Cooldown_Skill_c dummy
scoreboard objectives add Cooldown_Skill_d dummy

scoreboard objectives add Sett_ArrowCD dummy
scoreboard objectives add Sett_HpRegen dummy
scoreboard objectives add Sett_SkillCD dummy

# Spawning entity to be used by engine
execute as @e[tag=engine] at @s run forceload remove ~ ~
kill @e[tag=engine]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["persistent", "engine"]}
forceload add ~ ~

# Setup internal variables for engine entity
execute as @e[tag=engine] at @s run function internal:variables_in_engine
