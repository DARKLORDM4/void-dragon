# context: as/at KETHLER, the moment he lands
tag @s remove vd.bro_slam
scoreboard players set @s vd.bro 0
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..96]
particle reverse_portal ~ ~0.3 ~ 3 0.2 3 0.2 200 force @a[distance=..96]
particle dust{color:[0.5,0.0,0.8],scale:2.5} ~ ~0.3 ~ 3 0.1 3 0 60 force @a[distance=..96]
execute rotated 0 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 20 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 40 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 60 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 80 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 100 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 120 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 140 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 160 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 180 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 200 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 220 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 240 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 260 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 280 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 300 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 320 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
execute rotated 340 0 run particle dragon_breath ^ ^0.3 ^5 0 0 0 .02 2 force @a[distance=..96]
playsound minecraft:entity.generic.explode hostile @a[distance=..48] ~ ~ ~ 2 .6
playsound minecraft:block.anvil.land hostile @a[distance=..48] ~ ~ ~ 2 .5
tag @s add vd.bro_attacker
execute unless score bro_damage vd.cfg matches 1.. as @a[distance=..5.5,gamemode=!creative,gamemode=!spectator] run damage @s 9 minecraft:mob_attack by @n[tag=vd.bro_attacker]
execute if score bro_damage vd.cfg matches 1 as @a[distance=..5.5,gamemode=!creative,gamemode=!spectator] run damage @s 11.25 minecraft:mob_attack by @n[tag=vd.bro_attacker]
execute if score bro_damage vd.cfg matches 2.. as @a[distance=..5.5,gamemode=!creative,gamemode=!spectator] run damage @s 13.5 minecraft:mob_attack by @n[tag=vd.bro_attacker]
tag @s remove vd.bro_attacker
effect give @a[distance=..5.5,gamemode=!creative,gamemode=!spectator] levitation 1 3
effect give @a[distance=..5.5,gamemode=!creative,gamemode=!spectator] slowness 3 1
