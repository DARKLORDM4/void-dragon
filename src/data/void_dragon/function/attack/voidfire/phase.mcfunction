# VOID FIREBALLS: runs on its OWN timer (vd.vfire, 1..220) so it can run together with any other attack.
# Replaces the vanilla fireball strafe. Every wave: each player gets 3 projectiles (one aimed, two spread 9 degrees).
# EDIT HERE: wave ticks, spread (boss/vfire/shoot), speed (boss/vfire/step), damage (boss/vfire/impact), pool (boss/pool/tick).
scoreboard players add @s vd.vfire 1
execute if score @s vd.phase matches 9 run scoreboard players reset @s vd.vfire

execute if score @s vd.vfire matches 2 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 .9
execute if score @s vd.vfire matches 2 run playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=..256] ~ ~ ~ 4 .5
execute if score @s vd.vfire matches 2..29 run particle dragon_breath ~ ~2.5 ~ 2 1 2 .05 8 force @a[distance=..128]

# --- 7 waves, one every 20 ticks (30..150)
execute if score @s vd.vfire matches 30 run function void_dragon:attack/voidfire/wave
execute if score @s vd.vfire matches 50 run function void_dragon:attack/voidfire/wave
execute if score @s vd.vfire matches 70 run function void_dragon:attack/voidfire/wave
execute if score @s vd.vfire matches 90 run function void_dragon:attack/voidfire/wave
execute if score @s vd.vfire matches 110 run function void_dragon:attack/voidfire/wave
execute if score @s vd.vfire matches 130 run function void_dragon:attack/voidfire/wave
execute if score @s vd.vfire matches 150 run function void_dragon:attack/voidfire/wave

execute if score @s vd.vfire matches 220.. run scoreboard players reset @s vd.vfire
