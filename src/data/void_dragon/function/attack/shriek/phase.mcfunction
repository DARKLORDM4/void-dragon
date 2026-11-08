# VOID SHRIEK. Own phase, bosstime 4200..4539. Timeline (ticks = bosstime):
#   4201..4240  the dragon flies to the middle of the island and rises to y=96
#   4241..4360  CHARGE: it hovers for 6 seconds, spinning faster and faster while the void gathers (boss/shriek/charge_fx)
#   4361        RELEASE: a scream and a huge shockwave ring that races out at 5 blocks/tick (up to 180 blocks)
#   4362..4400  every player the ring reaches is pushed 6 blocks away from the centre (no damage)
#   4361..4560  WEAK WINDOW (10 s): the dragon is exhausted, sinks to y=72 and glows; players get Strength II for 8 seconds
#   4561        the dragon recovers
execute if score @s vd.hp matches ..100 run return run function void_dragon:attack/shriek/abort
execute if score @s vd.phase matches 9 run return run function void_dragon:attack/shriek/abort
tag @s add vd.engaged
data modify entity @s DragonPhase set value 10

# --- fly to the centre
execute if score @s vd.act matches 4201 run title @a[distance=..256] actionbar {"text":"Void Shriek!","color":"light_purple","bold":true}
execute if score @s vd.act matches 4201 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .6
# it really flies there (banking, speeding up, slowing to a stop) and waits at 4240 until it has arrived
execute if score @s vd.act matches 4201 run function void_dragon:dragon/steer/init
execute if score @s vd.act matches 4201 run scoreboard players set @s vd.qcd 0
execute if score @s vd.act matches 4201..4240 run tp @n[type=marker,tag=vd.aim] 0 96 0
execute if score @s vd.act matches 4201..4240 positioned 0 96 0 unless entity @s[distance=..12] run function void_dragon:attack/dive/fly {want:260,acc:12,turn:70}
execute if score @s vd.act matches 4201..4240 positioned 0 96 0 if entity @s[distance=..12] run function void_dragon:attack/dive/fly {want:40,acc:30,turn:120}
execute if score @s vd.act matches 4201..4240 run particle dragon_breath ~ ~1 ~ 2 1 2 .05 8 force @a[distance=..256]
execute if score @s vd.act matches 4240 run scoreboard players add @s vd.qcd 1
execute if score @s vd.act matches 4240 if score @s vd.qcd matches ..300 positioned 0 96 0 unless entity @s[distance=..2.5] run scoreboard players remove @s vd.act 1
execute if score @s vd.act matches 4241 run function void_dragon:dragon/steer/stop
execute if score @s vd.act matches 4241 run tp @s 0 96 0

# --- arrow immunity until the scream: arrows near the dragon burn up
execute if score @s vd.act matches 4201..4361 as @e[type=#minecraft:arrows,distance=..14] at @s run function void_dragon:attack/shriek/burn_arrow

# --- charge (6 seconds): pinned over the centre, spinning faster and faster
execute if score @s vd.act matches 4242..4280 run tp @s 0 96 0 ~3 ~
execute if score @s vd.act matches 4281..4320 run tp @s 0 96 0 ~6 ~
execute if score @s vd.act matches 4321..4350 run tp @s 0 96 0 ~12 ~
execute if score @s vd.act matches 4351..4360 run tp @s 0 96 0 ~24 ~
execute if score @s vd.act matches 4241..4360 run function void_dragon:attack/shriek/charge_fx
execute if score @s vd.act matches 4241..4360 run function #void_dragon:shriek_charge

# --- release: the scream
execute if score @s vd.act matches 4361 run function void_dragon:attack/shriek/release

# --- the shockwave: radius = (bosstime - 4361) * 5
execute if score @s vd.act matches 4362..4400 run function void_dragon:attack/shriek/wave_step

# --- weak window: the dragon sinks, glows and can be hit
execute if score @s vd.act matches 4362..4381 run tp @s 0 ~-1.2 0
execute if score @s vd.act matches 4382..4560 run tp @s 0 ~ 0
execute if score @s vd.act matches 4362..4560 run particle smoke ~ ~1 ~ 4 2 4 .02 4 force @a[distance=..128]
execute if score @s vd.act matches 4362..4560 run particle end_rod ~ ~2 ~ 5 2 5 .02 2 force @a[distance=..128]
execute if score @s vd.act matches 4400 run title @a[distance=..256] actionbar {"text":"WEAK WINDOW - strike the dragon!","color":"gold","bold":true}
execute if score @s vd.act matches 4520 run title @a[distance=..256] actionbar {"text":"The dragon is recovering...","color":"red","bold":true}

# --- over
execute if score @s vd.act matches 4561.. run function void_dragon:attack/shriek/abort
