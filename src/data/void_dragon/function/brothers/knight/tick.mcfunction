# context: as/at KETHLER (wither skeleton), every tick
function void_dragon:brothers/guard
execute if score #sec vd.clock matches 1 run effect give @s glowing infinite 0 true
execute if entity @s[y=-200,dy=230] run function void_dragon:brothers/to_ground
execute if entity @s[tag=vd.bro_dodgecd] run scoreboard players remove @s vd.bro_dcd 1
execute if score @s vd.bro_dcd matches ..0 run tag @s remove vd.bro_dodgecd
tp @e[type=marker,tag=vd.bro_trackK,limit=1] ~ ~ ~
particle dust{color:[0.35,0.0,0.55],scale:1.4} ~ ~1 ~ .35 .6 .35 0 2 force @a[distance=..64]
particle reverse_portal ~ ~1 ~ .3 .6 .3 0 1 normal @a[distance=..64]
execute if entity @s[tag=vd.bro_enraged] run particle soul_fire_flame ~ ~1 ~ .3 .6 .3 .01 1 normal @a[distance=..64]

# below half of his own health: his armor cracks
execute if entity @s[tag=!vd.bro_halfhp] store result score #h vd.tmp run data get entity @s Health
execute if entity @s[tag=!vd.bro_halfhp] run scoreboard players operation #h vd.tmp *= #k2 vd.k
execute if entity @s[tag=!vd.bro_halfhp] if score #h vd.tmp <= bro_kmax vd.state run function void_dragon:brothers/knight/crack

# moves in progress
execute if entity @s[tag=vd.bro_slam] run function void_dragon:brothers/knight/slam_tick
execute if entity @s[tag=vd.bro_cleave] run function void_dragon:brothers/knight/cleave_tick
execute if entity @s[tag=vd.bro_pull] run function void_dragon:brothers/knight/pull_tick
execute if entity @s[tag=vd.bro_slam] run return 0
execute if entity @s[tag=vd.bro_cleave] run return 0
execute if entity @s[tag=vd.bro_pull] run return 0

scoreboard players add @s vd.bro 1
scoreboard players set #cd vd.tmp 90
execute if entity @s[tag=vd.bro_halfhp] run scoreboard players set #cd vd.tmp 70
execute if entity @s[tag=vd.bro_enraged] run scoreboard players set #cd vd.tmp 50
execute if score @s vd.bro >= #cd vd.tmp if entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] run function void_dragon:brothers/knight/attack
execute if score @s vd.bro > #cd vd.tmp run scoreboard players operation @s vd.bro = #cd vd.tmp
