# context: the dragon at 1/3 health. The original towers' crystals come back; the shield holds until ALL crystals are destroyed.
scoreboard players reset shield_hp vd.state
scoreboard players set shield_up vd.state 1
scoreboard players set shield_mode vd.state 1
scoreboard players set shield_t vd.state 0
scoreboard players set shield_kills vd.state 0
scoreboard players set shield_need vd.state 2147483647
scoreboard players set shield_max vd.state 1
bossbar set void_dragon:shield name {"text":"Desperate Shield - destroy every crystal","color":"red","bold":true}
bossbar set void_dragon:shield style progress
bossbar set void_dragon:shield max 1
bossbar set void_dragon:shield value 1
execute positioned 0 80 0 run bossbar set void_dragon:shield players @a[distance=..180]
bossbar set void_dragon:shield visible true
data merge entity @s {Invulnerable:1b}
