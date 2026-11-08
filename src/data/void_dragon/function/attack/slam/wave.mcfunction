# context: as/at a quake ring, every tick. Radius grows 0.7 blocks a tick up to 28 blocks.
scoreboard players add @s vd.age 1
execute if score @s vd.age matches ..0 run return 0
execute if score @s vd.age matches 41.. run return run kill @s
scoreboard players operation #qr vd.tmp = @s vd.age
scoreboard players operation #qr vd.tmp *= #k7 vd.k
execute store result storage void_dragon:storage qk.r double 0.1 run scoreboard players get #qr vd.tmp
scoreboard players add #qr vd.tmp 8
execute store result storage void_dragon:storage qk.hi double 0.1 run scoreboard players get #qr vd.tmp
scoreboard players remove #qr vd.tmp 21
execute if score #qr vd.tmp matches ..-1 run scoreboard players set #qr vd.tmp 0
execute store result storage void_dragon:storage qk.lo double 0.1 run scoreboard players get #qr vd.tmp
execute if score @s vd.age matches 1 run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..64] ~ ~ ~ 2 .5
function void_dragon:attack/slam/wave_draw with storage void_dragon:storage qk
