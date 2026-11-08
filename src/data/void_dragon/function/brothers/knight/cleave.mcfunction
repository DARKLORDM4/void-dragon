# context: as/at KETHLER. Winds up for 0.75 s, then a wide soulfire slash in front of him.
tag @s add vd.bro_cleave
scoreboard players set @s vd.bro2 0
effect give @s slowness 1 3 true
title @a[distance=..16] actionbar {"text":"⚠ KETHLER raises his blade - soulfire gathers!","color":"aqua","bold":true}
playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..48] ~ ~ ~ 2 1.4
playsound minecraft:item.trident.return hostile @a[distance=..48] ~ ~ ~ 2 .5
