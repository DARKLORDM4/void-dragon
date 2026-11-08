# context: as/at KETHLER, facing the target. Hits everyone in a wide arc in front of him.
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..48] ~ ~ ~ 3 .5
playsound minecraft:entity.blaze.shoot hostile @a[distance=..48] ~ ~ ~ 2 .6
playsound minecraft:item.trident.thunder hostile @a[distance=..48] ~ ~ ~ 1 1.5
execute rotated ~-60 0 run particle sweep_attack ^ ^1 ^2.5 0 0 0 0 1 force @a[distance=..64]
execute rotated ~-30 0 run particle sweep_attack ^ ^1 ^2.5 0 0 0 0 1 force @a[distance=..64]
execute rotated ~0 0 run particle sweep_attack ^ ^1 ^2.5 0 0 0 0 1 force @a[distance=..64]
execute rotated ~30 0 run particle sweep_attack ^ ^1 ^2.5 0 0 0 0 1 force @a[distance=..64]
execute rotated ~60 0 run particle sweep_attack ^ ^1 ^2.5 0 0 0 0 1 force @a[distance=..64]
execute rotated ~-70 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~-56 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~-42 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~-28 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~-14 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~0 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~14 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~28 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~42 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~56 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~70 0 run particle soul_fire_flame ^ ^1 ^3.5 .1 .2 .1 .02 3 force @a[distance=..64]
execute rotated ~ 0 positioned ^ ^ ^2.5 run tag @a[distance=..3.5,gamemode=!creative,gamemode=!spectator] add vd.bro_cleaved
tag @s add vd.bro_attacker
execute unless score bro_damage vd.cfg matches 1.. as @a[tag=vd.bro_cleaved] run damage @s 11 minecraft:mob_attack by @n[tag=vd.bro_attacker]
execute if score bro_damage vd.cfg matches 1 as @a[tag=vd.bro_cleaved] run damage @s 13.75 minecraft:mob_attack by @n[tag=vd.bro_attacker]
execute if score bro_damage vd.cfg matches 2.. as @a[tag=vd.bro_cleaved] run damage @s 16.5 minecraft:mob_attack by @n[tag=vd.bro_attacker]
tag @s remove vd.bro_attacker
# the void chills instead of withering: slowed and half-blinded for a moment
effect give @a[tag=vd.bro_cleaved] slowness 3 1
effect give @a[tag=vd.bro_cleaved] darkness 3 0
title @a[tag=vd.bro_cleaved] actionbar {"text":"Soulfire Cleave!","color":"aqua","bold":true}
tag @a remove vd.bro_cleaved
