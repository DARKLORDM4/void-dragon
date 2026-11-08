# context: as/at a TURRET-affix tower marker: range 18, shoots every second
tag @p[gamemode=!creative,gamemode=!spectator,distance=..18] add vd.turret_target
playsound minecraft:entity.guardian.attack hostile @a[distance=..48] ~ ~ ~ 3 1.4
scoreboard players set #steps vd.tmp 30
execute positioned ~ ~1 ~ facing entity @p[tag=vd.turret_target] eyes run function void_dragon:towers/turret/beam
# 5 damage (x1 / x1.5 / x2 by difficulty, x3 in the desperate phase)
execute unless score dragon_difficulty vd.cfg matches 1.. as @a[tag=vd.turret_target] run damage @s 5 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score dragon_difficulty vd.cfg matches 1 as @a[tag=vd.turret_target] run damage @s 7.5 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score dragon_difficulty vd.cfg matches 2.. as @a[tag=vd.turret_target] run damage @s 10 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute as @a[tag=vd.turret_target] at @s run particle electric_spark ~ ~1 ~ .3 .5 .3 .2 20 force @a[distance=..48]
tag @a[tag=vd.turret_target] remove vd.turret_target
