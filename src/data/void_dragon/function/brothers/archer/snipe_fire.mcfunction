# context: as VEXIS, at his eyes, facing the target
summon spectral_arrow ^ ^ ^1.5 {Tags:["vd.bro_arrow","vd.bro_new"],pickup:0b,damage:7.0d,crit:1b,PierceLevel:3b}
execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^4.5 {Tags:["vd.bro_dir"]}
execute as @e[type=spectral_arrow,tag=vd.bro_new] run data modify entity @s Motion set from entity @n[type=marker,tag=vd.bro_dir] Pos
execute as @e[type=spectral_arrow,tag=vd.bro_new] run data modify entity @s Owner set from entity @n[type=stray,tag=vd.bro_archer] UUID
kill @e[type=marker,tag=vd.bro_dir]
tag @e[type=spectral_arrow,tag=vd.bro_new] remove vd.bro_new
playsound minecraft:item.crossbow.shoot hostile @a[distance=..64] ~ ~ ~ 3 .5
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..64] ~ ~ ~ 2 .6
particle flash{color:[1.000,1.000,1.000,1.00]} ^ ^ ^1 0 0 0 0 1 force @a[distance=..96]
