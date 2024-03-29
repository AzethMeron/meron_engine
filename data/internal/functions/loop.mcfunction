# by Azeth Meron

# Setup const_ variables (and TPS)
execute as @e run function internal:constants

# HPDelta, InCombat
execute as @a run function internal:hpdelta
execute as @a run function internal:incombat

# Teleport to spawn players who have left the game previously
execute as @a[scores={itr_LeftServer=1..}] at @s run function tool:respawn_player
execute as @a[scores={itr_LeftServer=1..}] at @s run scoreboard players set @s itr_LeftServer 0

# HP regen, cooldowns, HP percentage
execute if entity @e[tag=engine,scores={Sett_HpRegen=1}] run execute as @a at @s run function internal:hp_regen
execute if entity @e[tag=engine,scores={Sett_SkillCD=1}] run execute as @a at @s run function internal:cooldown
execute if entity @e[tag=engine,scores={Sett_SkillCD=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}}]
execute as @a at @s run function internal:hpercentage

# Arrow mechanics
execute if entity @e[tag=engine,scores={Sett_ArrowCD=1}] run execute as @e[type=minecraft:arrow,nbt={inGround:1b}] at @s run function trigger:arrow_land
execute if entity @e[tag=engine,scores={Sett_ArrowCD=1}] run kill @e[type=minecraft:arrow,nbt={inGround:1b}]
execute if entity @e[tag=engine,scores={Sett_ArrowCD=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute if entity @e[tag=engine,scores={Sett_ArrowCD=1}] run execute as @a at @s run function internal:arrow_cd

# Triggers
execute as @e[tag=engine] at @s run function internal:triggers

# Managing outsiders
execute as @a at @s unless score @s Ticket = @e[tag=engine,limit=1] Ticket run scoreboard players set @s InGame -1

# Spawning players (low-level functions)
execute as @e[tag=first_spawn] at @s run execute as @a[distance=..2] at @s run function internal:first_spawn
execute as @e[tag=spawn] at @s run execute as @a[distance=..2] at @s run function internal:spawn

# RespawnTime feature
execute as @e[tag=ingame_respawn_waitroom] at @s run execute as @a[distance=..2,scores={RespawnTimeLeft=0}] run scoreboard players operation @s RespawnTimeLeft = @e[tag=engine,limit=1] RespawnTime
scoreboard players remove @a[scores={RespawnTimeLeft=1..}] RespawnTimeLeft 1
execute as @a[scores={RespawnTimeLeft=1}] at @s run function progression:spawn_ingame
execute as @a[scores={RespawnTimeLeft=1..}] at @s run function progression:timed_ingame_spawn_feedback

# Clean some scoreboards provided by engine
scoreboard players set @a DamageDealt 0
scoreboard players set @a DamageTaken 0
scoreboard players set @a BowUsed 0
scoreboard players set @a CrossBowUsed 0
# Sneaking is a bit more complicated
execute as @a[scores={Sneaking=1..}] if score @s Sneaking = @s itr_SneakingPrev run scoreboard players set @s Sneaking 0
execute as @a run scoreboard players operation @s itr_SneakingPrev = @s Sneaking