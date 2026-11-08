# context: as/at VEXIS (stray), every tick
function void_dragon:brothers/guard
execute if score #sec vd.clock matches 1 run effect give @s glowing infinite 0 true
execute if entity @s[y=-200,dy=230] unless entity @e[type=phantom,tag=vd.bro_mount,distance=..4] run function void_dragon:brothers/to_ground
execute if entity @s[tag=vd.bro_dodgecd] run scoreboard players remove @s vd.bro_dcd 1
execute if score @s vd.bro_dcd matches ..0 run tag @s remove vd.bro_dodgecd
tp @e[type=marker,tag=vd.bro_trackA,limit=1] ~ ~ ~
execute as @e[type=arrow,tag=!vd.bro_sf,distance=..4] run function void_dragon:brothers/archer/arrow_sf
particle portal ~ ~1 ~ .3 .5 .3 .3 2 normal @a[distance=..64]
particle dust{color:[0.7,0.2,1.0],scale:1.2} ~ ~1.2 ~ .3 .5 .3 0 1 force @a[distance=..64]

# triple volley in progress
execute if entity @s[tag=vd.bro_volley] run function void_dragon:brothers/archer/volley_tick
execute if entity @s[tag=vd.bro_snipe] run function void_dragon:brothers/archer/snipe_tick

scoreboard players add @s vd.bro 1
scoreboard players set #cd vd.tmp 110
execute if entity @s[tag=vd.bro_enraged] run scoreboard players set #cd vd.tmp 60
execute if score @s vd.bro >= #cd vd.tmp if entity @p[distance=..48,gamemode=!creative,gamemode=!spectator] run function void_dragon:brothers/archer/attack
execute if score @s vd.bro > #cd vd.tmp run scoreboard players operation @s vd.bro = #cd vd.tmp
