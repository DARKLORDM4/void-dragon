# context: as/at a player who just arrived in the End (vd.arrive 1..40): a portal swirl rising around them
scoreboard players add @s vd.arrive 1
scoreboard players operation #f vd.tmp = @s vd.arrive
scoreboard players set #n vd.tmp 8
scoreboard players operation #f vd.tmp %= #n vd.tmp
execute if score #f vd.tmp matches 0 rotated 0 0 run particle reverse_portal ^ ^0.5 ^1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 0 rotated 0 0 run particle reverse_portal ^ ^1.6 ^-1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 1 rotated 45 0 run particle reverse_portal ^ ^0.5 ^1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 1 rotated 45 0 run particle reverse_portal ^ ^1.6 ^-1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 2 rotated 90 0 run particle reverse_portal ^ ^0.5 ^1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 2 rotated 90 0 run particle reverse_portal ^ ^1.6 ^-1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 3 rotated 135 0 run particle reverse_portal ^ ^0.5 ^1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 3 rotated 135 0 run particle reverse_portal ^ ^1.6 ^-1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 4 rotated 180 0 run particle reverse_portal ^ ^0.5 ^1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 4 rotated 180 0 run particle reverse_portal ^ ^1.6 ^-1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 5 rotated 225 0 run particle reverse_portal ^ ^0.5 ^1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 5 rotated 225 0 run particle reverse_portal ^ ^1.6 ^-1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 6 rotated 270 0 run particle reverse_portal ^ ^0.5 ^1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 6 rotated 270 0 run particle reverse_portal ^ ^1.6 ^-1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 7 rotated 315 0 run particle reverse_portal ^ ^0.5 ^1.2 0 0 0 0 3 force @a[distance=..48]
execute if score #f vd.tmp matches 7 rotated 315 0 run particle reverse_portal ^ ^1.6 ^-1.2 0 0 0 0 3 force @a[distance=..48]
execute if score @s vd.arrive matches 40.. run scoreboard players reset @s vd.arrive
