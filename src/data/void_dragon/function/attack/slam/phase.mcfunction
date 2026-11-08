# context: as/at the dragon during the VOID QUAKE (vd.act 5201..5339), flown through dragon/steer.
#   5201..5240  it sweeps in and circles low over the marked spot
#   5241..5258  it climbs almost straight up above it, slowing to a stall (rearing)
#   5259..5275  it slams down, faster every tick
#   impact      crush + 3 quake rings; 5277..5305 it stays down, 5306..5330 it lifts off
execute if score @s vd.phase matches 9 run return run function void_dragon:attack/slam/abort
execute unless entity @e[type=marker,tag=vd.slam_spot] if score @s vd.act matches ..5275 run return run function void_dragon:attack/slam/abort
tag @s add vd.engaged
data modify entity @s DragonPhase set value 10

execute if score @s vd.act matches 5201 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .5
execute if score @s vd.act matches 5201 run title @a[distance=..200] actionbar {"text":"Get ready to JUMP!","color":"gold","bold":true}
execute if score @s vd.act matches 5201..5275 at @n[type=marker,tag=vd.slam_spot] run particle dust{color:[1.0,0.55,0.1],scale:1.3} ~ ~0.2 ~ 2.5 0 2.5 0 6 force @a[distance=..128]

execute as @e[type=marker,tag=vd.slam_pivot] at @s positioned as @n[type=marker,tag=vd.slam_spot] run tp @s ~ ~ ~ ~4 0

execute if score @s vd.act matches 5201..5240 at @n[type=marker,tag=vd.slam_pivot] rotated as @n[type=marker,tag=vd.slam_pivot] run tp @n[type=marker,tag=vd.aim] ^ ^16 ^14
execute if score @s vd.act matches 5201..5240 run function void_dragon:attack/dive/fly {want:140,acc:6,turn:60}

execute if score @s vd.act matches 5241..5258 at @n[type=marker,tag=vd.slam_spot] run tp @n[type=marker,tag=vd.aim] ~ ~30 ~
execute if score @s vd.act matches 5241..5258 run function void_dragon:attack/dive/fly {want:30,acc:8,turn:90}
execute if score @s vd.act matches 5245..5258 run particle reverse_portal ~ ~ ~ 2 3 2 .3 25 force @a[distance=..200]
execute if score @s vd.act matches 5250 run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..200] ~ ~ ~ 6 .6

execute if score @s vd.act matches 5259..5275 run function void_dragon:attack/slam/drop

execute if score @s vd.act matches 5277..5305 run particle smoke ~ ~1 ~ 2 1 2 .02 3 force @a[distance=..128]
execute if score @s vd.act matches 5306..5330 at @n[type=marker,tag=vd.slam_pivot] rotated as @n[type=marker,tag=vd.slam_pivot] run tp @n[type=marker,tag=vd.aim] ^ ^26 ^30
execute if score @s vd.act matches 5306..5330 run function void_dragon:attack/dive/fly {want:150,acc:10,turn:70}
execute if score @s vd.act matches 5331.. run function void_dragon:attack/slam/abort
