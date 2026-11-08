# context: as/at a crystal-spot marker whose crystal has just been destroyed (inner OR outer ring)
tag @s remove vd.alive
scoreboard players add shield_kills vd.state 1
execute if score crystal_retaliation vd.cfg matches 1 run function void_dragon:towers/crystal/retaliate
execute if entity @s[tag=vd.aff_explosive] run function void_dragon:towers/affix/explode
execute if entity @s[tag=vd.aff_cursed] run function void_dragon:towers/affix/curse
# shatter animation
function void_dragon:fx/ring {kind:"star",r:5,dr:5,life:14}
particle end_rod ~ ~ ~ .2 .2 .2 .35 40 force @a[distance=..160]
playsound minecraft:block.amethyst_cluster.break hostile @a[distance=..96] ~ ~ ~ 3 .7
