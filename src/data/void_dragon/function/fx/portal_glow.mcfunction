# in the End at 0 64 0, for 60 s after a victory: the exit portal breathes light, with a soft ring every 5 s
scoreboard players remove portal_glow vd.state 1
particle end_rod ~ ~1 ~ 1.8 0.3 1.8 0.02 2 force @a[distance=..96]
particle dust{color:[0.85,0.75,1.0],scale:1.2} ~ ~2 ~ 1.5 1.5 1.5 0 2 force @a[distance=..96]
scoreboard players operation #f vd.tmp = portal_glow vd.state
scoreboard players set #n vd.tmp 100
scoreboard players operation #f vd.tmp %= #n vd.tmp
execute if score #f vd.tmp matches 0 run function void_dragon:fx/ring {kind:"star",r:30,dr:6,life:25}
