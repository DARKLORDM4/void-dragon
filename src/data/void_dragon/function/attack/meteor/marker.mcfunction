# context: as/at a meteor marker. vd.tmp = ticks since it was placed. Impact at count 30 (fast markers skip to 13).
scoreboard players add @s vd.age 1
execute if score @s vd.age matches 1 unless entity @e[distance=..256,type=ender_dragon] run kill @s
execute if entity @s[tag=vd.meteor_fast] if score @s vd.age matches 1 run scoreboard players set @s vd.age 13

# --- warning ring (radius 5 = the explosion area), drawn every 2nd tick
scoreboard players operation #p vd.tmp = @s vd.age
scoreboard players operation #p vd.tmp %= #k2 vd.k
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 0 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 30 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 60 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 90 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 120 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 150 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 180 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 210 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 240 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 270 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 300 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 330 0 positioned ^ ^ ^5 run particle dust_color_transition{from_color:[1.0,0.55,0.1],scale:1.3,to_color:[1.0,0.1,0.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score @s vd.age matches 8..29 run particle electric_spark ~ ~.5 ~ .4 3 .4 .05 2 force @a[distance=..96]
execute if score @s vd.age matches 20..29 run particle dragon_breath ~ ~.5 ~ .5 2 .5 .02 3 force @a[distance=..96]

# --- impact
execute if score @s vd.age matches 30 if entity @e[distance=..256,type=ender_dragon] run function void_dragon:attack/meteor/spawn
execute if score @s vd.age matches 32.. run kill @s
