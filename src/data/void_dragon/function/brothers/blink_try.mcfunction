# tries 8 directions, 45 degrees apart
scoreboard players add #tries vd.tmp 1
execute if score #ok vd.tmp matches 0 rotated as @n[type=marker,tag=vd.bro_rot] positioned ^ ^ ^8 positioned ~ ~ ~ if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable unless block ~ ~-1 ~ #void_dragon:passable run function void_dragon:brothers/blink_go
execute if score #ok vd.tmp matches 0 rotated as @n[type=marker,tag=vd.bro_rot] positioned ^ ^ ^8 positioned ~ ~-1 ~ if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable unless block ~ ~-1 ~ #void_dragon:passable run function void_dragon:brothers/blink_go
execute if score #ok vd.tmp matches 0 rotated as @n[type=marker,tag=vd.bro_rot] positioned ^ ^ ^8 positioned ~ ~-2 ~ if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable unless block ~ ~-1 ~ #void_dragon:passable run function void_dragon:brothers/blink_go
execute if score #ok vd.tmp matches 0 rotated as @n[type=marker,tag=vd.bro_rot] positioned ^ ^ ^8 positioned ~ ~1 ~ if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable unless block ~ ~-1 ~ #void_dragon:passable run function void_dragon:brothers/blink_go
execute if score #ok vd.tmp matches 0 rotated as @n[type=marker,tag=vd.bro_rot] positioned ^ ^ ^8 positioned ~ ~-3 ~ if block ~ ~ ~ #void_dragon:passable if block ~ ~1 ~ #void_dragon:passable unless block ~ ~-1 ~ #void_dragon:passable run function void_dragon:brothers/blink_go
execute if score #ok vd.tmp matches 0 as @e[type=marker,tag=vd.bro_rot] at @s run tp @s ~ ~ ~ ~45 ~
execute if score #ok vd.tmp matches 0 if score #tries vd.tmp matches ..7 run function void_dragon:brothers/blink_try
