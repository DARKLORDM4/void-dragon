# context: as/at KETHLER, once, when he drops below half of his own health
tag @s add vd.bro_halfhp
effect give @s speed infinite 1 true
tellraw @a[distance=..180] [{"text":"KETHLER's armor cracks","color":"dark_purple","bold":true},{"text":" - his fury grows!","color":"gray","bold":false}]
playsound minecraft:item.shield.break hostile @a[distance=..64] ~ ~ ~ 3 .5
playsound minecraft:entity.wither.ambient hostile @a[distance=..64] ~ ~ ~ 2 .6
particle dust{color:[0.5,0.0,0.8],scale:2.5} ~ ~1 ~ .6 1 .6 0 80 force @a[distance=..96]
