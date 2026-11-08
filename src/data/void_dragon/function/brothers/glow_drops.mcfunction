
# context: at the spot where a brother died. Every dropped item nearby glows purple (team colour) and never despawns.
execute as @e[type=item,distance=..8,tag=!vd.glowdrop] run data merge entity @s {Glowing:1b,Age:-32768s}
team join vd.loot @e[type=item,distance=..8,tag=!vd.glowdrop]
tag @e[type=item,distance=..8] add vd.glowdrop
