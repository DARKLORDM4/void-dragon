# context: as/at the chosen fighter. The line runs through them in a random direction, 31 points 2.5 blocks apart.
summon marker ~ ~ ~ {Tags:["vd.riftdir"]}
execute as @e[type=marker,tag=vd.riftdir] store result entity @s Rotation[0] float 1 run random value 0..359
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-37.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 0
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-35.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 1
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-32.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 2
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-30.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 3
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-27.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 4
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-25.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 5
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-22.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 6
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-20.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 7
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-17.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 8
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-15.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 9
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-12.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 10
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-10.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 11
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-7.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 12
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-5.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 13
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^-2.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 14
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^0.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 15
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^2.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 16
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^5.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 17
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^7.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 18
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^10.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 19
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^12.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 20
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^15.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 21
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^17.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 22
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^20.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 23
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^22.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 24
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^25.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 25
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^27.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 26
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^30.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 27
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^32.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 28
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^35.0 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 29
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
execute rotated as @n[type=marker,tag=vd.riftdir] positioned ^ ^ ^37.5 positioned over motion_blocking unless block ~ ~-1 ~ #void_dragon:passable run summon marker ~ ~ ~ {Tags:["vd.rift","vd.rift_new"]}
scoreboard players set @e[type=marker,tag=vd.rift_new] vd.ro 30
tag @e[type=marker,tag=vd.rift_new] remove vd.rift_new
scoreboard players set @e[type=marker,tag=vd.rift] vd.rt 0
kill @e[type=marker,tag=vd.riftdir]
