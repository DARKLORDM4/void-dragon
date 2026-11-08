# in the End at 0 64 0, every tick while the summoning crystals on the portal are beaming (a dragon is being respawned)
scoreboard players add respawn_t vd.state 1
# your towers come back to life one by one while the ritual climbs
function void_dragon:towers/respawn_step
# a double helix of void climbing the portal, faster as the ritual goes on
scoreboard players operation #f vd.tmp = respawn_t vd.state
scoreboard players set #n vd.tmp 12
scoreboard players operation #f vd.tmp %= #n vd.tmp
execute store result storage void_dragon:storage fx.a int 30 run scoreboard players get #f vd.tmp
execute store result storage void_dragon:storage fx.h double 0.05 run scoreboard players get respawn_t vd.state
function void_dragon:fx/respawn/helix with storage void_dragon:storage fx
# every 2 s a ring collapses into the portal
scoreboard players operation #f vd.tmp = respawn_t vd.state
scoreboard players set #n vd.tmp 40
scoreboard players operation #f vd.tmp %= #n vd.tmp
execute if score #f vd.tmp matches 1 positioned 0 64 0 run function void_dragon:fx/ring {kind:"void",r:160,dr:-8,life:20}
execute if score #f vd.tmp matches 1 run playsound minecraft:block.respawn_anchor.charge ambient @a[distance=..160] 0 64 0 3 .5
# the summoning crystals crackle
execute as @e[type=end_crystal,distance=..12] at @s run particle reverse_portal ~ ~1 ~ .3 .3 .3 .2 4 force @a[distance=..160]
