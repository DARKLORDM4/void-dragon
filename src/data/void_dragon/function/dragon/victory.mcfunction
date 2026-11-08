# in the End at the island centre, when the dragon is slain: a celebration instead of the old defeat music
title @a[distance=..256] times 10 80 30
title @a[distance=..256] title {"text":"VICTORY","color":"gold","bold":true}
title @a[distance=..256] subtitle {"text":"The Void Dragon has fallen","color":"light_purple"}
playsound minecraft:ui.toast.challenge_complete master @a[distance=..256] ~ ~ ~ 1 .8
playsound minecraft:entity.player.levelup master @a[distance=..256] ~ ~ ~ 1 .6
playsound minecraft:block.beacon.power_select master @a[distance=..256] ~ ~ ~ 1 .7
execute as @a[distance=..256] at @s run particle totem_of_undying ~ ~1 ~ 1.5 1.5 1.5 .6 120 force @s
execute as @a[distance=..256] at @s run particle firework ~ ~3 ~ 3 2 3 .1 60 force @s
