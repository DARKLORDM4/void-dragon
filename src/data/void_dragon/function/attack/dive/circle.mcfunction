# context: the dive spot. Draws the target circle on the ground (radius 7 = the blast area) and a centre beam.
scoreboard players add @s vd.age 1
execute store result storage void_dragon:storage dv.spin int 4 run scoreboard players get @s vd.age
function void_dragon:attack/dive/circle_draw with storage void_dragon:storage dv
particle dust{color:[0.75,0.1,0.95],scale:1.5} ~ ~0.2 ~ 0.4 0 0.4 0 3 force @a[distance=..128]
execute if score @s vd.age matches 40.. run particle end_rod ~ ~0.5 ~ 0 6 0 0 6 force @a[distance=..160]
