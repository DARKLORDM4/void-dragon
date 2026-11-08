# context: as/at the dragon during a scripted flight. Flies one tick toward the vd.aim marker like a real flyer:
# it can only turn #turn (tenths of a degree) per tick and only change speed by #acc (hundredths) toward #want.
tp @n[type=marker,tag=vd.dir] ~ ~ ~
execute facing entity @n[type=marker,tag=vd.aim] feet run tp @n[type=marker,tag=vd.dir] ~ ~ ~ ~ ~
execute store result score #wy vd.tmp run data get entity @n[type=marker,tag=vd.dir] Rotation[0] 10
execute store result score #wp vd.tmp run data get entity @n[type=marker,tag=vd.dir] Rotation[1] 10
scoreboard players operation #nt vd.tmp = #turn vd.tmp
scoreboard players operation #nt vd.tmp *= #kneg vd.k
# yaw: shortest way round, limited turn
scoreboard players operation #d vd.tmp = #wy vd.tmp
scoreboard players operation #d vd.tmp -= @s vd.hdy
scoreboard players operation #d vd.tmp %= #k3600 vd.k
execute if score #d vd.tmp matches 1801.. run scoreboard players operation #d vd.tmp -= #k3600 vd.k
execute if score #d vd.tmp matches ..-1801 run scoreboard players operation #d vd.tmp += #k3600 vd.k
scoreboard players operation #d vd.tmp < #turn vd.tmp
scoreboard players operation #d vd.tmp > #nt vd.tmp
scoreboard players operation @s vd.hdy += #d vd.tmp
scoreboard players operation @s vd.hdy %= #k3600 vd.k
# pitch: limited turn
scoreboard players operation #d vd.tmp = #wp vd.tmp
scoreboard players operation #d vd.tmp -= @s vd.hdp
scoreboard players operation #d vd.tmp < #turn vd.tmp
scoreboard players operation #d vd.tmp > #nt vd.tmp
scoreboard players operation @s vd.hdp += #d vd.tmp
# speed eases toward #want
scoreboard players operation #d vd.tmp = #want vd.tmp
scoreboard players operation #d vd.tmp -= @s vd.spd
scoreboard players operation #na vd.tmp = #acc vd.tmp
scoreboard players operation #na vd.tmp *= #kneg vd.k
scoreboard players operation #d vd.tmp < #acc vd.tmp
scoreboard players operation #d vd.tmp > #na vd.tmp
scoreboard players operation @s vd.spd += #d vd.tmp
# move along the heading; the body is turned to match it
execute store result entity @n[type=marker,tag=vd.dir] Rotation[0] float 0.1 run scoreboard players get @s vd.hdy
execute store result entity @n[type=marker,tag=vd.dir] Rotation[1] float 0.1 run scoreboard players get @s vd.hdp
execute store result storage void_dragon:storage st.s double 0.01 run scoreboard players get @s vd.spd
execute rotated as @n[type=marker,tag=vd.dir] run function void_dragon:dragon/steer/move with storage void_dragon:storage st
