# context: as/at KETHLER, when VEXIS dies
tag @s add vd.bro_enraged
effect give @s speed infinite 2 true
effect give @s strength infinite 1 true
effect give @s resistance infinite 0 true
particle dust{color:[1.0,0.0,0.2],scale:2.5} ~ ~1 ~ .6 1 .6 0 80 force @a[distance=..96]
particle soul_fire_flame ~ ~1 ~ .6 1 .6 .05 60 force @a[distance=..96]
playsound minecraft:entity.ravager.roar hostile @a[distance=..96] ~ ~ ~ 4 .5
playsound minecraft:entity.wither.spawn hostile @a[distance=..96] ~ ~ ~ 2 1.5
