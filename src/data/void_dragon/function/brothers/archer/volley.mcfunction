# context: as/at VEXIS
tag @s add vd.bro_volley
scoreboard players set @s vd.bro2 0
title @a[tag=vd.bro_tgt] actionbar {"text":"➶ VEXIS draws a volley of void arrows!","color":"light_purple"}
playsound minecraft:entity.illusioner.prepare_mirror hostile @a[distance=..64] ~ ~ ~ 3 .8
function void_dragon:brothers/archer/volley_fire
