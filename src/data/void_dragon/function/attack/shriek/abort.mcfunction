# context: the dragon. Ends the Void Shriek (finished, or the dragon entered its final phase).
tag @s remove vd.engaged
effect clear @s minecraft:glowing
tag @a remove vd.shrieked
scoreboard players set @s vd.act 0
# never pull a dying dragon (phase 9) out of its death
execute unless score @s vd.phase matches 9 run data modify entity @s DragonPhase set value 0
function void_dragon:dragon/steer/stop
