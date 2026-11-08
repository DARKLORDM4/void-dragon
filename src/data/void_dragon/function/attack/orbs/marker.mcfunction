# context: as/at an orb. Drifts toward the nearest fighter (faster over time), bursts on contact, fades after 10 s.
scoreboard players add @s vd.ol 1
execute unless entity @e[type=ender_dragon,distance=..300] run return run kill @s
execute if score @s vd.ol matches 200.. run return run function void_dragon:attack/orbs/fade
# an arrow pops it
execute if entity @e[type=#minecraft:arrows,distance=..1.6] run return run function void_dragon:attack/orbs/pop
# looks
particle dust{color:[0.25,0.0,0.45],scale:3.0} ~ ~ ~ .25 .25 .25 0 3 force @a[distance=..96]
particle dust{color:[0.75,0.2,1.0],scale:1.2} ~ ~ ~ .35 .35 .35 0 2 force @a[distance=..96]
particle portal ~ ~ ~ .2 .2 .2 .6 3 force @a[distance=..96]
execute if score #half vd.clock matches 1 run playsound minecraft:block.beacon.ambient hostile @a[distance=..24] ~ ~ ~ 1 1.8
# contact
# contact: measured to the middle of the body, not the feet, so touching an orb bursts it at once
execute positioned ~ ~-0.9 ~ if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run return run function void_dragon:attack/orbs/burst
# movement
execute if score @s vd.ol matches ..80 facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..80] eyes run tp @s ^ ^ ^0.28
execute if score @s vd.ol matches 81.. facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..80] eyes run tp @s ^ ^ ^0.4
# check again right after moving, so a fast orb cannot slip through you
execute at @s positioned ~ ~-0.9 ~ if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] at @s run function void_dragon:attack/orbs/burst
