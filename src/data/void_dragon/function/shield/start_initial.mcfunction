# context: the dragon, first tick of a fight. A crystal shield that only breaks when EVERY tower crystal is destroyed.
scoreboard players reset shield_hp vd.state
scoreboard players set shield_up vd.state 1
scoreboard players set shield_mode vd.state 1
scoreboard players set shield_t vd.state 0
scoreboard players set shield_kills vd.state 0
scoreboard players set shield_need vd.state 2147483647
scoreboard players set shield_max vd.state 1
bossbar set void_dragon:shield name {"text":"Crystal Shield - destroy every crystal","color":"aqua","bold":true}
bossbar set void_dragon:shield style progress
bossbar set void_dragon:shield max 1
bossbar set void_dragon:shield value 1
execute positioned 0 80 0 run bossbar set void_dragon:shield players @a[distance=..180]
bossbar set void_dragon:shield visible true
data merge entity @s {Invulnerable:1b}
