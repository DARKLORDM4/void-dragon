# context: as/at a thunder marker. vd.tmp = ticks since it was placed.
# strike happens at count 30 (fast markers skip ahead to 13 on their first tick)
scoreboard players add @s vd.age 1
execute if score @s vd.age matches 1 unless entity @e[distance=..256,type=ender_dragon] run kill @s

execute if score @s vd.age matches 1 run playsound minecraft:block.beacon.power_select hostile @a[distance=..64] ~ ~ ~ 2 1.6
execute if entity @s[tag=vd.thunder_fast] if score @s vd.age matches 1 run scoreboard players set @s vd.age 13

# --- telegraph: outer ring = damage area, inner ring = lethal core (drawn every 2nd tick)
scoreboard players operation #p vd.tmp = @s vd.age
scoreboard players operation #p vd.tmp %= #k2 vd.k
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 0 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 30 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 60 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 90 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 120 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 150 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 180 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 210 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 240 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 270 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 300 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches ..29 rotated 330 0 positioned ^ ^ ^4 run particle dust_color_transition{from_color:[0.4,0.7,1.0],scale:1.2,to_color:[0.8,0.9,1.0]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]

execute if score #p vd.tmp matches 0 if score @s vd.age matches 15..29 rotated 0 0 positioned ^ ^ ^2 run particle dust_color_transition{from_color:[1.0,0.9,0.2],scale:1.2,to_color:[1.0,0.5,0.1]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches 15..29 rotated 60 0 positioned ^ ^ ^2 run particle dust_color_transition{from_color:[1.0,0.9,0.2],scale:1.2,to_color:[1.0,0.5,0.1]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches 15..29 rotated 120 0 positioned ^ ^ ^2 run particle dust_color_transition{from_color:[1.0,0.9,0.2],scale:1.2,to_color:[1.0,0.5,0.1]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches 15..29 rotated 180 0 positioned ^ ^ ^2 run particle dust_color_transition{from_color:[1.0,0.9,0.2],scale:1.2,to_color:[1.0,0.5,0.1]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches 15..29 rotated 240 0 positioned ^ ^ ^2 run particle dust_color_transition{from_color:[1.0,0.9,0.2],scale:1.2,to_color:[1.0,0.5,0.1]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]
execute if score #p vd.tmp matches 0 if score @s vd.age matches 15..29 rotated 300 0 positioned ^ ^ ^2 run particle dust_color_transition{from_color:[1.0,0.9,0.2],scale:1.2,to_color:[1.0,0.5,0.1]} ~ ~.15 ~ 0 0 0 0 1 force @a[distance=..96]

# rising sparks that get denser as the strike gets close
execute if score @s vd.age matches 8..29 run particle electric_spark ~ ~.5 ~ .4 3 .4 .05 2 force @a[distance=..96]
execute if score @s vd.age matches 20..29 run particle end_rod ~ ~.5 ~ .3 4 .3 .1 3 force @a[distance=..96]
execute if score @s vd.age matches 22 run playsound minecraft:entity.creeper.primed hostile @a[distance=..48] ~ ~ ~ 2 1.6

# --- strike
execute if score @s vd.age matches 30 if entity @e[distance=..256,type=ender_dragon] run function void_dragon:attack/thunder/strike

# --- cleanup
execute if score @s vd.age matches 32.. run kill @s
