# context: the dragon, the moment the crash lands (tick 112).
execute in the_end positioned 0 66 0 run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..200]
execute in the_end positioned 0 66 0 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~2 ~ 0 0 0 0 3 force @a[distance=..200]
execute in the_end positioned 0 66 0 run particle end_rod ~ ~1 ~ 0.5 8 0.5 0.35 160 force @a[distance=..200]
execute in the_end positioned 0 66 0 run particle dragon_breath ~ ~1 ~ 4 1 4 0.2 150 force @a[distance=..200]
execute in the_end positioned 0 66 0 run particle large_smoke ~ ~1 ~ 5 1 5 0.1 80 force @a[distance=..200]
playsound minecraft:entity.generic.explode hostile @a[distance=..256] 0 66 0 10 .5 .6
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] 0 66 0 10 .6 .6
playsound minecraft:block.anvil.land hostile @a[distance=..256] 0 66 0 10 .5 .6
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] 0 66 0 10 .4 .6
tag @a remove vd.crashed
