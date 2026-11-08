# context: as/at KETHLER during the wind-up
scoreboard players add @s vd.bro2 1
particle reverse_portal ~ ~1 ~ 6 1 6 0 30 force @a[distance=..64]
particle dust{color:[0.35,0.0,0.55],scale:2.0} ~ ~1 ~ .5 1 .5 0 6 force @a[distance=..64]
particle portal ~ ~1 ~ 7 1.5 7 1.5 40 force @a[distance=..64]
execute if score @s vd.bro2 matches 20 run function void_dragon:brothers/knight/pull_release
execute if score @s vd.bro2 matches 20.. run tag @s remove vd.bro_pull
