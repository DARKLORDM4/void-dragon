# macro: r = ring radius, lo/hi = the band a player must be in to be hit
$execute rotated 0 0 positioned ^ ^0.2 ^$(r) run particle dust{color:[1.0,0.55,0.1],scale:2.0} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
$execute rotated 22.5 0 positioned ^ ^0.2 ^$(r) run particle block{block_state:"minecraft:end_stone"} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..128]
$execute rotated 45 0 positioned ^ ^0.2 ^$(r) run particle dust{color:[0.75,0.1,0.95],scale:2.0} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
$execute rotated 67.5 0 positioned ^ ^0.2 ^$(r) run particle block{block_state:"minecraft:end_stone"} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..128]
$execute rotated 90 0 positioned ^ ^0.2 ^$(r) run particle dust{color:[1.0,0.55,0.1],scale:2.0} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
$execute rotated 112.5 0 positioned ^ ^0.2 ^$(r) run particle block{block_state:"minecraft:end_stone"} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..128]
$execute rotated 135 0 positioned ^ ^0.2 ^$(r) run particle dust{color:[0.75,0.1,0.95],scale:2.0} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
$execute rotated 157.5 0 positioned ^ ^0.2 ^$(r) run particle block{block_state:"minecraft:end_stone"} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..128]
$execute rotated 180 0 positioned ^ ^0.2 ^$(r) run particle dust{color:[1.0,0.55,0.1],scale:2.0} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
$execute rotated 202.5 0 positioned ^ ^0.2 ^$(r) run particle block{block_state:"minecraft:end_stone"} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..128]
$execute rotated 225 0 positioned ^ ^0.2 ^$(r) run particle dust{color:[0.75,0.1,0.95],scale:2.0} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
$execute rotated 247.5 0 positioned ^ ^0.2 ^$(r) run particle block{block_state:"minecraft:end_stone"} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..128]
$execute rotated 270 0 positioned ^ ^0.2 ^$(r) run particle dust{color:[1.0,0.55,0.1],scale:2.0} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
$execute rotated 292.5 0 positioned ^ ^0.2 ^$(r) run particle block{block_state:"minecraft:end_stone"} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..128]
$execute rotated 315 0 positioned ^ ^0.2 ^$(r) run particle dust{color:[0.75,0.1,0.95],scale:2.0} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
$execute rotated 337.5 0 positioned ^ ^0.2 ^$(r) run particle block{block_state:"minecraft:end_stone"} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..128]
# hits: only fighters standing on the ground in the band, roughly at the ring's height
execute positioned ~-30 ~-1.5 ~-30 run tag @a[dx=60,dy=3,dz=60,gamemode=!creative,gamemode=!spectator] add vd.qslab
$execute as @a[tag=vd.qslab,distance=$(lo)..$(hi)] unless score @s vd.qcd matches 1.. if predicate void_dragon:on_ground run function void_dragon:attack/slam/quake_hit
tag @a remove vd.qslab
