# context: the dragon, Void Shriek charge (bosstime 4241..4360). Part of the epic charge animation.
scoreboard players operation #c vd.tmp = @s vd.act
scoreboard players remove #c vd.tmp 4240
execute if score #c vd.tmp matches 1..40 run particle dust{color:[0.12,0.0,0.25],scale:3} ~ ~1 ~ 2 2 2 0 10 force @a[distance=..200]
execute if score #c vd.tmp matches 41..80 run particle dust{color:[0.12,0.0,0.25],scale:4} ~ ~1 ~ 3 3 3 0 22 force @a[distance=..200]
execute if score #c vd.tmp matches 81..120 run particle dust{color:[0.12,0.0,0.25],scale:4} ~ ~1 ~ 4 4 4 0 40 force @a[distance=..200]
execute if score #c vd.tmp matches 81..120 run particle portal ~ ~1 ~ 3 3 3 1.2 40 force @a[distance=..200]
execute if score #c vd.tmp matches 40..79 run particle electric_spark 0 100 0 30 15 30 0.3 10 force @a[distance=..200]
execute if score #c vd.tmp matches 80..120 run particle electric_spark 0 100 0 40 20 40 0.5 30 force @a[distance=..200]
execute if score #c vd.tmp matches 100..120 run particle end_rod ~ ~1 ~ 0 0 0 0.7 30 force @a[distance=..200]
execute if score #c vd.tmp matches 110 run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a[distance=..200]
execute if score #c vd.tmp matches 115 run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a[distance=..200]
execute if score #c vd.tmp matches 119 run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a[distance=..200]
