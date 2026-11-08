# context: a dragon seen for the first time (new fight). Sets its health and starts every fight system.
tag @s add vd.known
scoreboard players set #keep vd.tmp 1000
function void_dragon:dragon/set_max
attribute @s minecraft:knockback_resistance base set 1
scoreboard players set @s vd.act 0
scoreboard players reset @s vd.death
tag @s remove vd.engaged
function void_dragon:towers/init
tag @e[type=marker,tag=vd.warded] remove vd.warded
function void_dragon:reward/slayer/init
function void_dragon:shield/start_initial
function void_dragon:phase/name/apply
function void_dragon:dragon/arrival_roar
