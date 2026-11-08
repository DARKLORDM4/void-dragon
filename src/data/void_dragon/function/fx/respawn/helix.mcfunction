# macro: a = angle (degrees), h = height above the portal
$execute rotated $(a) 0 positioned 0 64 0 positioned ~ ~$(h) ~ run particle dust{color:[0.6,0.1,1.0],scale:2.0} ^ ^ ^3.5 0 0 0 0 2 force @a[distance=..200]
$execute rotated $(a) 0 positioned 0 64 0 positioned ~ ~$(h) ~ run particle dust{color:[0.6,0.1,1.0],scale:2.0} ^ ^ ^-3.5 0 0 0 0 2 force @a[distance=..200]
$execute rotated $(a) 0 positioned 0 64 0 positioned ~ ~$(h) ~ run particle end_rod ^ ^ ^3.5 0 0 0 0.01 1 force @a[distance=..200]
