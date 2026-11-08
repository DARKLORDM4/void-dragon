# context: the dragon. LAST STAND banner and roar; the attacks themselves come in pairs (phase/laststand/next_group).
title @a[distance=..256] times 5 60 20
title @a[distance=..256] subtitle {"text":"LAST STAND","color":"dark_red","bold":true}
title @a[distance=..256] title {"text":""}
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .3
playsound minecraft:entity.wither.spawn hostile @a[distance=..256] ~ ~ ~ 6 .5
