# context: as/at Nightmaw, every tick
function void_dragon:brothers/guard
tp @e[type=marker,tag=vd.bro_trackM,limit=1] ~ ~ ~
particle dust{color:[0.15,0.0,0.25],scale:2.5} ~ ~ ~ 1.2 .3 1.2 0 3 force @a[distance=..96]
# (no speed boost: rewriting its Motion every tick made Nightmaw stutter and rubber-band on screen)
# shulker bullets every 3 s at up to 2 players within 32 blocks
scoreboard players add @s vd.bro 1
execute if score @s vd.bro matches 60.. if entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] run function void_dragon:brothers/mount_shoot
execute if score @s vd.bro matches 60.. run scoreboard players set @s vd.bro 60
