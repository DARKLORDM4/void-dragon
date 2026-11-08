# context: the dragon reaches 2/3 health
tag @s add vd.stage2
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .8
title @a[distance=..256] actionbar {"text":"The dragon grows furious","color":"light_purple","bold":true}
execute if function void_dragon:attack/room run function void_dragon:attack/lances/start
# shockwave across the island
execute in the_end positioned 0 64.3 0 run function void_dragon:fx/ring {kind:"void",r:20,dr:20,life:40}
