summon marker ~ ~1 ~ {Tags:["vd.orb"]}
scoreboard players set @e[type=marker,tag=vd.orb,distance=..2] vd.ol 0
playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..96] ~ ~ ~ 4 .4
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a[distance=..96]
