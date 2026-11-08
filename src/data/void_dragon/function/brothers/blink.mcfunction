# context: as/at a brother on foot. Teleports 8 blocks away in a random direction, only onto solid ground near his own height.
tag @s add vd.bro_self
summon marker ~ ~ ~ {Tags:["vd.bro_rot"]}
execute as @e[type=marker,tag=vd.bro_rot] store result entity @s Rotation[0] float 1 run random value 0..359
scoreboard players set #ok vd.tmp 0
scoreboard players set #tries vd.tmp 0
function void_dragon:brothers/blink_try
kill @e[type=marker,tag=vd.bro_rot]
tag @s remove vd.bro_self
execute at @s run particle reverse_portal ~ ~1 ~ .4 1 .4 .3 80 force @a[distance=..64]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..48] ~ ~ ~ 2 .9
