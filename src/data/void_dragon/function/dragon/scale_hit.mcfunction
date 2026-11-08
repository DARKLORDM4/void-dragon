# context: a dragon with more than 1024 health (true_hp). Whatever it lost this tick is shrunk to
# loss * 1024 / true_hp, so it takes true_hp worth of damage to bring it down.
execute store result score #ch vd.tmp run data get entity @s Health 100
execute if score #ch vd.tmp matches ..0 run return 0
scoreboard players operation #loss vd.tmp = @s vd.cap
scoreboard players operation #loss vd.tmp -= #ch vd.tmp
execute if score #loss vd.tmp matches ..0 run return 0
scoreboard players operation #loss vd.tmp *= #k1024 vd.k
scoreboard players operation #loss vd.tmp /= @s vd.true_hp
scoreboard players operation #ch vd.tmp = @s vd.cap
scoreboard players operation #ch vd.tmp -= #loss vd.tmp
execute store result entity @s Health float 0.01 run scoreboard players get #ch vd.tmp
