# by Azeth Meron
# Called every time any player dies
# @s - player who died
# @p[scores={MessageKill=1}] - player who killed (note: incase of suicide, there's no killer!)

execute if entity @a[scores={MessageKill=1..}] run tellraw @a ["",{"selector":"@p[scores={MessageKill=1..}] "},{"text":" > ","color":"dark_red","bold":"true"},{"text":"killed","color":"red"},{"text":" > ","color":"dark_red","bold":"true"},{"selector":"@s"}]
execute unless entity @a[scores={MessageKill=1..}] run tellraw @a ["",{"selector":"@s"},{"text":" ","italic":true},{"text":"has died","italic":true,"color":"red"}]
