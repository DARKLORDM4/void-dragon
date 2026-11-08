# context: as/at Nightmaw (the phantom). A sonic screech: darkness, slowness and a jolt upward.
playsound minecraft:entity.phantom.death hostile @a[distance=..64] ~ ~ ~ 4 .4
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..64] ~ ~ ~ 2 1.6
particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @a[distance=..96]
particle dust{color:[0.2,0.0,0.35],scale:3.0} ~ ~ ~ 5 2 5 0 80 force @a[distance=..96]
title @a[distance=..20,gamemode=!creative,gamemode=!spectator] actionbar {"text":"✖ Nightmaw screeches!","color":"dark_gray","bold":true}
effect give @a[distance=..20,gamemode=!creative,gamemode=!spectator] darkness 5 0
effect give @a[distance=..20,gamemode=!creative,gamemode=!spectator] slowness 3 1
effect give @a[distance=..20,gamemode=!creative,gamemode=!spectator] levitation 1 2
tag @s add vd.bro_attacker
execute unless score bro_damage vd.cfg matches 1.. as @a[distance=..20,gamemode=!creative,gamemode=!spectator,limit=8] run damage @s 4 minecraft:sonic_boom by @n[tag=vd.bro_attacker]
execute if score bro_damage vd.cfg matches 1 as @a[distance=..20,gamemode=!creative,gamemode=!spectator,limit=8] run damage @s 5 minecraft:sonic_boom by @n[tag=vd.bro_attacker]
execute if score bro_damage vd.cfg matches 2.. as @a[distance=..20,gamemode=!creative,gamemode=!spectator,limit=8] run damage @s 6 minecraft:sonic_boom by @n[tag=vd.bro_attacker]
tag @s remove vd.bro_attacker
