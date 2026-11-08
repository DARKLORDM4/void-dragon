$particle explosion ^ ^0.5 ^$(r) 0.4 0.2 0.4 0 1 force @a[distance=..200]
$particle dragon_breath ^ ^0.3 ^$(r) 0.5 0.2 0.5 0.02 4 force @a[distance=..200]
$particle large_smoke ^ ^0.3 ^$(r) 0.4 0.1 0.4 0.01 2 force @a[distance=..200]
scoreboard players add #ray vd.tmp 1
execute if score #ray vd.tmp matches ..71 rotated ~5 0 run function void_dragon:attack/gravity/crash_ray with storage void_dragon:crash
