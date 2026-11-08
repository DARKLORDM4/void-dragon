# context: at the dragon, as it is gone. No blast: a soft wave of void rolls out across the island
# and a thin thread of light rises from the portal.
particle end_rod ~ ~1 ~ 1 1 1 0.15 40 force @a[distance=..300]
kill @e[type=marker,tag=vd.dmote]
execute in the_end positioned 0 64.3 0 run function void_dragon:fx/ring {kind:"void",r:30,dr:8,life:60}
execute in the_end positioned 0 64.8 0 run function void_dragon:fx/ring {kind:"star",r:15,dr:6,life:50}
execute in the_end run particle end_rod 0 72 0 0.15 7 0.15 0.01 50 force @a[distance=..300]
playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..300] ~ ~ ~ 5 .6
playsound minecraft:block.amethyst_block.resonate hostile @a[distance=..300] ~ ~ ~ 5 1.3
playsound minecraft:block.beacon.power_select hostile @a[distance=..300] ~ ~ ~ 3 .5
title @a[distance=..300] times 20 80 40
title @a[distance=..300] subtitle {text:"its darkness returns to the stars",color:"gray",italic:true}
title @a[distance=..300] title {text:"The Dragon Rests",color:"light_purple"}
