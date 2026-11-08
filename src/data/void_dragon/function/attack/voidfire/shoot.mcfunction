# context: as/at a targeted player. 3 projectiles leave the dragon: one aimed at the player, two spread +-9 degrees.
tag @s add vd.vtarget
execute positioned as @n[type=ender_dragon] run summon marker ~ ~ ~ {Tags:["vd.vball","vd.vball_new"]}
execute positioned as @n[type=ender_dragon] run summon marker ~ ~ ~ {Tags:["vd.vball","vd.vball_new","vd.vspread_l"]}
execute positioned as @n[type=ender_dragon] run summon marker ~ ~ ~ {Tags:["vd.vball","vd.vball_new","vd.vspread_r"]}
execute as @e[type=marker,tag=vd.vball_new] at @s run tp @s ~ ~ ~ facing entity @a[tag=vd.vtarget,limit=1] eyes
execute as @e[type=marker,tag=vd.vspread_l] at @s run tp @s ~ ~ ~ ~-9 ~
execute as @e[type=marker,tag=vd.vspread_r] at @s run tp @s ~ ~ ~ ~9 ~
tag @e[type=marker,tag=vd.vball_new] remove vd.vspread_l
tag @e[type=marker,tag=vd.vball_new] remove vd.vspread_r
tag @e[type=marker,tag=vd.vball_new] remove vd.vball_new
tag @s remove vd.vtarget
