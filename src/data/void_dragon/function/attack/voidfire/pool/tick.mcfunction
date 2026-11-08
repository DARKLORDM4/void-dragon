# context: as/at a breath pool marker, every tick. Lasts 8 s (160 ticks), radius 3.2, damages every 10 ticks.
scoreboard players add @s vd.age 1
scoreboard players operation #p vd.tmp = @s vd.age
scoreboard players operation #p vd.tmp %= #k10 vd.k
particle dragon_breath ~ ~.25 ~ 1.4 .15 1.4 .01 3 force @a[distance=..64]
particle dust_color_transition{from_color:[0.75,0.25,1.0],scale:1.2,to_color:[0.35,0.0,0.7]} ~ ~.1 ~ 1.5 .05 1.5 0 2 force @a[distance=..64]
# 2 damage per hit, every 10 ticks
execute unless score dragon_difficulty vd.cfg matches 1.. if score #p vd.tmp matches 0 as @a[gamemode=!creative,gamemode=!spectator,distance=..3.2] run damage @s 2 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score dragon_difficulty vd.cfg matches 1 if score #p vd.tmp matches 0 as @a[gamemode=!creative,gamemode=!spectator,distance=..3.2] run damage @s 3 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score dragon_difficulty vd.cfg matches 2.. if score #p vd.tmp matches 0 as @a[gamemode=!creative,gamemode=!spectator,distance=..3.2] run damage @s 4 void_dragon:void_strike by @e[type=ender_dragon,sort=nearest,limit=1]
execute if score @s vd.age matches 160.. run kill @s
