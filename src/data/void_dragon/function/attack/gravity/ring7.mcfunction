particle dust{color:[0.7,0.3,1.0],scale:1.0} ^ ^ ^7 0.15 0.05 0.15 0 2 force @a[distance=..200]
scoreboard players add #ray vd.tmp 1
execute if score #ray vd.tmp matches ..23 rotated ~15 0 run function void_dragon:attack/gravity/ring7
