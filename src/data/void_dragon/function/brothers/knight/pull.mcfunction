# context: as/at KETHLER. 1 s wind-up, then everyone within 14 blocks is yanked toward him.
tag @s add vd.bro_pull
scoreboard players set @s vd.bro2 0
effect give @s slowness 1 4 true
title @a[distance=..18] actionbar {"text":"⚠ KETHLER reaches into the void - hold on!","color":"dark_purple","bold":true}
playsound minecraft:block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 1 1.6
playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..48] ~ ~ ~ 2 .7
