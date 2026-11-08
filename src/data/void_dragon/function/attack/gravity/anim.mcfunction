# context: the dragon, positioned at the ground centre of the island (0 66 0). #cr = Gravity Crash tick (2..127). Pure animation, no damage.
# 2..40   the void gathers: a light column rises from the ground to the core
execute if score #cr vd.tmp matches 2..40 run particle end_rod ~ ~4.5 ~ 0.35 4.5 0.35 0.01 3 force @a[distance=..200]
execute if score #cr vd.tmp matches 2..40 run particle dragon_breath ~ ~0.3 ~ 11 0.2 11 0.02 8 force @a[distance=..200]
execute if score #cr vd.tmp matches 20..40 run particle dust{color:[0.5,0.1,0.9],scale:2.5} ~ ~9 ~ 1 1 1 0 12 force @a[distance=..200]
# 41..100 the void collapses: six streams of light flow into the core, the column thickens and darkens
execute if score #cr vd.tmp matches 41..100 run particle end_rod ~ ~4.5 ~ 0.7 4.5 0.7 0.02 6 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 run particle dust{color:[0.1,0.0,0.25],scale:3} ~ ~6 ~ 1.5 3 1.5 0 14 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 run particle dragon_breath ~ ~0.3 ~ 13 0.2 13 0.03 12 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 0 0 positioned ^ ^1 ^11 facing 0 75 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000003 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 30 0 positioned ^ ^5 ^8 facing 0 75 0 run particle reverse_portal ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000002 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 60 0 positioned ^ ^1 ^11 facing 0 75 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000003 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 90 0 positioned ^ ^5 ^8 facing 0 75 0 run particle reverse_portal ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000002 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 120 0 positioned ^ ^1 ^11 facing 0 75 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000003 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 150 0 positioned ^ ^5 ^8 facing 0 75 0 run particle reverse_portal ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000002 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 180 0 positioned ^ ^1 ^11 facing 0 75 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000003 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 210 0 positioned ^ ^5 ^8 facing 0 75 0 run particle reverse_portal ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000002 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 240 0 positioned ^ ^1 ^11 facing 0 75 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000003 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 270 0 positioned ^ ^5 ^8 facing 0 75 0 run particle reverse_portal ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000002 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 300 0 positioned ^ ^1 ^11 facing 0 75 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000003 0 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 rotated 330 0 positioned ^ ^5 ^8 facing 0 75 0 run particle reverse_portal ~ ~ ~ ^ ^ ^100000000000000000000000 0.000000000000000000000002 0 force @a[distance=..200]
# 101..111 critical mass: everything glows white-pink, the ground ring blazes
execute if score #cr vd.tmp matches 101..111 run particle end_rod ~ ~4.5 ~ 1 5 1 0.15 25 force @a[distance=..200]
execute if score #cr vd.tmp matches 101..111 run particle dust{color:[1.0,0.4,1.0],scale:3} ~ ~9 ~ 2 2 2 0 25 force @a[distance=..200]
execute if score #cr vd.tmp matches 101..111 run particle sonic_boom ~ ~9 ~ 0 0 0 0 1 force @a[distance=..200]
# 112..118 THE CRASH: a geyser of void light blasts up from the impact point
execute if score #cr vd.tmp matches 112..118 run particle end_rod ~ ~6 ~ 1 6 1 0.3 40 force @a[distance=..200]
execute if score #cr vd.tmp matches 112..118 run particle dragon_breath ~ ~1 ~ 3 0.5 3 0.25 40 force @a[distance=..200]
execute if score #cr vd.tmp matches 112 run playsound minecraft:block.end_portal.spawn hostile @a[distance=..256] ~ ~ ~ 6 1.6
# sounds while charging
execute if score #cr vd.tmp matches 45 run playsound minecraft:block.respawn_anchor.ambient hostile @a[distance=..256] ~ ~ ~ 8 .6
execute if score #cr vd.tmp matches 65 run playsound minecraft:block.respawn_anchor.ambient hostile @a[distance=..256] ~ ~ ~ 8 .8
execute if score #cr vd.tmp matches 85 run playsound minecraft:block.respawn_anchor.ambient hostile @a[distance=..256] ~ ~ ~ 8 1.0
