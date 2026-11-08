$particle end_rod ^ ^ ^$(r) 1.5 0.6 1.5 0.02 3 force @a[distance=..300]
$particle electric_spark ^ ^0.5 ^$(r) 1 0.4 1 0.15 3 force @a[distance=..300]
$particle sculk_soul ^ ^0.3 ^$(r) 1 0.3 1 0.03 1 force @a[distance=..300]
scoreboard players add #ray vd.tmp 1
execute if score #ray vd.tmp matches ..47 rotated ~7.5 0 run function void_dragon:attack/shriek/ring_ray with storage void_dragon:shriek
