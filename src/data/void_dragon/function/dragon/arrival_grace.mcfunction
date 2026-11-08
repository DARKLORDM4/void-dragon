# context: a player who just entered the End. Resistance V = no damage for 10 seconds, and a short arrival effect.
tag @s add vd.inend
effect give @s resistance 10 4 true
title @s times 5 40 15
title @s title {"text":"THE END","color":"dark_purple","bold":true}
title @s subtitle {"text":"You are safe for 10 seconds","color":"aqua"}
playsound minecraft:block.end_portal.spawn ambient @s ~ ~ ~ .5 1.4
scoreboard players set @s vd.arrive 1
function void_dragon:fx/ring {kind:"void",r:50,dr:-2,life:24}
