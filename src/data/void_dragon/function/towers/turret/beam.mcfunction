# context: positioned at the crystal, facing the target. Draws the beam in 0.5 block steps (30 steps = 15 blocks).
particle dust_color_transition{from_color:[0.8,0.3,1.0],scale:1,to_color:[1.0,0.7,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..96]
scoreboard players remove #steps vd.tmp 1
execute if score #steps vd.tmp matches 1.. positioned ^ ^ ^0.5 run function void_dragon:towers/turret/beam
