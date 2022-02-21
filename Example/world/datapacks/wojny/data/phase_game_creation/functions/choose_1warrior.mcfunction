# by Azeth Meron
# @s - player

execute if entity @a[scores={Kit=1}] run tellraw @s {"text":"This kit is already picked, select another one.","color":"yellow"}
execute if entity @a[scores={Kit=1}] run function phase_game_creation:kit_selection
execute unless entity @a[scores={Kit=1}] run tellraw @s {"text":"Picked warrior.","color":"yellow"}
execute unless entity @a[scores={Kit=1}] run scoreboard players set @s Kit 1
