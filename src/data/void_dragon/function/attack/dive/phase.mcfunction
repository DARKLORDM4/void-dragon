# context: as/at the dragon during the VOID DIVE (vd.act 5001..5139). All flight goes through dragon/steer,
# so it banks, climbs and dives like a real flyer instead of snapping around.
#   5001..5050  wide climbing circle around the target (the circle on the ground follows them until 5040)
#   5051..5064  it swings up and over the locked circle, slowing at the top
#   5065..5110  the plunge: accelerating straight into the circle
#   impact      blast, then 5112..5138 it pulls up and away
execute if score @s vd.phase matches 9 run return run function void_dragon:attack/dive/abort
execute unless entity @e[type=marker,tag=vd.dive_spot] if score @s vd.act matches ..5110 run return run function void_dragon:attack/dive/abort
tag @s add vd.engaged
data modify entity @s DragonPhase set value 10

execute if score @s vd.act matches 5001 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..256] ~ ~ ~ 10 .5
execute if score @s vd.act matches 5001 run playsound minecraft:entity.phantom.swoop hostile @a[distance=..256] ~ ~ ~ 6 .5

execute if score @s vd.act matches 5001..5039 as @e[type=marker,tag=vd.dive_spot] run function void_dragon:attack/dive/follow
execute if score @s vd.act matches 5040 run function void_dragon:attack/dive/lock
execute if score @s vd.act matches 5001..5110 as @e[type=marker,tag=vd.dive_spot] at @s run function void_dragon:attack/dive/circle

# the pivot sits on the circle and slowly turns; the orbit point rides on it
execute as @e[type=marker,tag=vd.dive_pivot] at @s positioned as @n[type=marker,tag=vd.dive_spot] run tp @s ~ ~ ~ ~3 0

execute if score @s vd.act matches 5001..5050 at @n[type=marker,tag=vd.dive_pivot] rotated as @n[type=marker,tag=vd.dive_pivot] run tp @n[type=marker,tag=vd.aim] ^ ^30 ^20
execute if score @s vd.act matches 5001..5050 run function void_dragon:attack/dive/fly {want:150,acc:6,turn:55}

execute if score @s vd.act matches 5051..5064 at @n[type=marker,tag=vd.dive_spot] run tp @n[type=marker,tag=vd.aim] ~ ~36 ~
execute if score @s vd.act matches 5051..5064 run function void_dragon:attack/dive/fly {want:55,acc:8,turn:80}
execute if score @s vd.act matches 5055 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 10 .7
execute if score @s vd.act matches 5058..5064 run particle reverse_portal ~ ~2 ~ 3 2 3 .1 20 force @a[distance=..200]

execute if score @s vd.act matches 5065..5110 run function void_dragon:attack/dive/fall

execute if score @s vd.act matches 5112..5138 at @n[type=marker,tag=vd.dive_pivot] rotated as @n[type=marker,tag=vd.dive_pivot] run tp @n[type=marker,tag=vd.aim] ^ ^24 ^34
execute if score @s vd.act matches 5112..5138 run function void_dragon:attack/dive/fly {want:160,acc:10,turn:70}
execute if score @s vd.act matches 5139.. run function void_dragon:attack/dive/abort
