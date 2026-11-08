# context: as/at a player with a mace on the hotbar. A smash needs 1.5+ blocks of falling.
scoreboard players set #fd vd.tmp 0
execute store result score #fd vd.tmp run data get entity @s fall_distance 10
execute if score #fd vd.tmp matches 0 store result score #fd vd.tmp run data get entity @s FallDistance 10
scoreboard players operation @s vd.fd = #fd vd.tmp
execute if score #fd vd.tmp matches 15.. as @e[type=stray,tag=vd.bro_archer,tag=!vd.bro_dodgecd,distance=..7] at @s run function void_dragon:brothers/dodge
execute if score #fd vd.tmp matches 15.. as @e[type=wither_skeleton,tag=vd.bro_knight,tag=!vd.bro_dodgecd,distance=..7] at @s run function void_dragon:brothers/dodge
