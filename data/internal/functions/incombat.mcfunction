# by Azeth Meron
# @s - player

# Decrementing counter
execute as @s[scores={itr_InCombatTik=1..}] run scoreboard players remove @s itr_InCombatTik 1

# Detecting
execute as @s[scores={DamageDealt=1..}] run function tool:enter_combat_state
execute as @s[scores={DamageTaken=1..}] run function tool:enter_combat_state

# Setting InCombat to 0
execute as @s[scores={itr_InCombatTik=1}] run scoreboard players set @s InCombat 0