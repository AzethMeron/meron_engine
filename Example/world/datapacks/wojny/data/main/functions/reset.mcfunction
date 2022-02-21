# by Azeth Meron
# Trigger, called upon using tool:reset

scoreboard objectives setdisplay sidebar
kill @e[tag=Game]
scoreboard players set @e[tag=engine] EndgameTimer 0
scoreboard players set @e[tag=engine] GcRequestStart 0

# Teams
team empty yellow
team empty purple
scoreboard players set Yellow TeamKills 0
scoreboard players set Purple TeamKills 0
team join yellow Yellow
team join purple Purple

# Actually, commenting following shit will allow memorizing values from prev games
# Needs to be uncommented when using engine:init. Also remember to initialize new scoreboards in the future!
#scoreboard players set @e[tag=engine] Mode 0
#scoreboard players set @e[tag=engine] Map 0
#scoreboard players set @e[tag=engine] Goal 0
#scoreboard players set @e[tag=engine] Score 5
#scoreboard players set @e[tag=engine] DisplayHealth 0