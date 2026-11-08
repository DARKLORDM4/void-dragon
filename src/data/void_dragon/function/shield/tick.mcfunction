# context: the dragon, every tick while shield_up = 1 (called LAST in a_main so nothing else can switch the shield off)
execute unless data entity @s {Invulnerable:1b} run data merge entity @s {Invulnerable:1b}
execute unless score shield_mode vd.state matches 1.. store result bossbar void_dragon:shield value run scoreboard players get shield_kills vd.state
#starting shield: the bar shows the crystals that are still standing
execute if score shield_mode vd.state matches 1 if score crystals_left vd.state > shield_max vd.state run scoreboard players operation shield_max vd.state = crystals_left vd.state
execute if score shield_mode vd.state matches 1 store result bossbar void_dragon:shield max run scoreboard players get shield_max vd.state
execute if score shield_mode vd.state matches 1 store result bossbar void_dragon:shield value run scoreboard players get crystals_left vd.state
execute if score #sec vd.clock matches 1 run scoreboard players add shield_t vd.state 1
execute if score #sec vd.clock matches 1 positioned 0 80 0 run bossbar set void_dragon:shield players @a[distance=..180]
particle end_rod ~ ~1.5 ~ 4 2 4 .02 4 force @a[distance=..128]
particle dust_color_transition{from_color:[0.3,0.8,1.0],scale:2,to_color:[0.8,1.0,1.0]} ~ ~1.5 ~ 3.5 2 3.5 0 3 force @a[distance=..128]
execute unless score shield_mode vd.state matches 1.. if score shield_kills vd.state >= shield_need vd.state run function void_dragon:shield/break
execute unless score shield_mode vd.state matches 1.. if score shield_t vd.state matches 180.. run function void_dragon:shield/break
execute if score shield_mode vd.state matches 1 if score outer_built vd.state matches 1 unless score @s vd.reignite matches 1.. if score crystals_left vd.state matches 0 if score shield_t vd.state matches 3.. run function void_dragon:shield/break

#brothers shield: bar = brothers still alive; breaks once both are dead (or the brothers were switched off)
execute if score shield_mode vd.state matches 2 run scoreboard players operation #alive vd.tmp = bro_archer vd.state
execute if score shield_mode vd.state matches 2 run scoreboard players operation #alive vd.tmp += bro_knight vd.state
execute if score shield_mode vd.state matches 2 unless score bro_spawned vd.state matches 1 run scoreboard players set #alive vd.tmp 2
execute if score shield_mode vd.state matches 2 store result bossbar void_dragon:shield value run scoreboard players get #alive vd.tmp
execute if score shield_mode vd.state matches 2 unless score bro_active vd.state matches 1 run function void_dragon:shield/break
