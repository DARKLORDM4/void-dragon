# context: the dragon. Ends the Void Dive.
tag @s remove vd.engaged
kill @e[type=marker,tag=vd.dive_spot]
kill @e[type=marker,tag=vd.dive_pivot]
function void_dragon:dragon/steer/stop
scoreboard players set @s vd.act 0
# never pull a dying dragon (phase 9) out of its death
execute unless score @s vd.phase matches 9 run data modify entity @s DragonPhase set value 0
