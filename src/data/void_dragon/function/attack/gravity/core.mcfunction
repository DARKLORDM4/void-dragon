# context: positioned 0 75 0 (the void core).
execute if score #cr vd.tmp matches 2..40 run particle dust{color:[0.35,0.1,0.8],scale:2} ~ ~ ~ 1.2 1.2 1.2 0 10 force @a[distance=..200]
execute if score #cr vd.tmp matches 2..40 run particle dragon_breath ~ ~ ~ 14 5 14 .05 20 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 run particle dust{color:[0.15,0.0,0.3],scale:4} ~ ~ ~ 1.8 1.8 1.8 0 25 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 run particle reverse_portal ~ ~ ~ 20 6 20 .6 40 force @a[distance=..200]
execute if score #cr vd.tmp matches 41..100 run particle end_rod ~ ~ ~ 2.5 2.5 2.5 .05 4 force @a[distance=..200]
execute if score #cr vd.tmp matches 101..111 run particle dust{color:[1.0,0.3,0.9],scale:2.5} ~ ~ ~ 0.8 0.8 0.8 0 40 force @a[distance=..200]
execute if score #cr vd.tmp matches 101..111 run particle reverse_portal ~ ~ ~ 10 4 10 .8 60 force @a[distance=..200]
execute if score #cr vd.tmp matches 101..111 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..200]
