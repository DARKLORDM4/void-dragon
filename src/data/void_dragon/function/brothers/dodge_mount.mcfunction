# context: as/at Nightmaw carrying VEXIS. Both blink 10 blocks through the air, then he climbs back on.
tag @s add vd.bro_self
execute on passengers run tag @s add vd.bro_rider
summon marker ~ ~ ~ {Tags:["vd.bro_rot"]}
execute as @e[type=marker,tag=vd.bro_rot] store result entity @s Rotation[0] float 1 run random value 0..359
scoreboard players set #ok vd.tmp 0
execute rotated as @n[type=marker,tag=vd.bro_rot] positioned ^ ^ ^10 if block ~ ~ ~ #void_dragon:passable if block ~ ~2 ~ #void_dragon:passable run function void_dragon:brothers/dodge_mount_go
execute if score #ok vd.tmp matches 0 rotated as @n[type=marker,tag=vd.bro_rot] positioned ^ ^ ^-10 positioned ~ ~3 ~ if block ~ ~ ~ #void_dragon:passable if block ~ ~2 ~ #void_dragon:passable run function void_dragon:brothers/dodge_mount_go
kill @e[type=marker,tag=vd.bro_rot]
tag @e[tag=vd.bro_rider] remove vd.bro_rider
tag @s remove vd.bro_self
