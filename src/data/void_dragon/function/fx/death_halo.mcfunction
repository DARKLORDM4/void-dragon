# macro: a = spin angle, r = radius. Six slow points of light circling the body, and a faint violet trail.
$execute rotated $(a) 0 run particle end_rod ^ ^1.5 ^$(r) 0 0 0 0 1 force @a[distance=..200]
$execute rotated $(a) 0 rotated ~60 0 run particle end_rod ^ ^1.5 ^$(r) 0 0 0 0 1 force @a[distance=..200]
$execute rotated $(a) 0 rotated ~120 0 run particle end_rod ^ ^1.5 ^$(r) 0 0 0 0 1 force @a[distance=..200]
$execute rotated $(a) 0 rotated ~180 0 run particle end_rod ^ ^1.5 ^$(r) 0 0 0 0 1 force @a[distance=..200]
$execute rotated $(a) 0 rotated ~240 0 run particle end_rod ^ ^1.5 ^$(r) 0 0 0 0 1 force @a[distance=..200]
$execute rotated $(a) 0 rotated ~300 0 run particle end_rod ^ ^1.5 ^$(r) 0 0 0 0 1 force @a[distance=..200]
$execute rotated $(a) 0 rotated ~30 0 run particle dust{color:[0.55,0.2,0.95],scale:1.1} ^ ^1.5 ^$(r) 0 0 0 0 1 force @a[distance=..200]
$execute rotated $(a) 0 rotated ~210 0 run particle dust{color:[0.55,0.2,0.95],scale:1.1} ^ ^1.5 ^$(r) 0 0 0 0 1 force @a[distance=..200]
