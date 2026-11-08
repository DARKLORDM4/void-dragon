# extra xp = value * count * (multiplier - 1)   (the original orb stays, so the total is value * count * multiplier)
scoreboard players operation #t vd.tmp = #v vd.tmp
scoreboard players operation #t vd.tmp *= #c vd.tmp
# first kill: the multiplier setting. Repeat kills: x48 (500 x 48 = 24,000 xp)
scoreboard players set #m vd.tmp 48
execute if score xp_first vd.state matches 1 run scoreboard players operation #m vd.tmp = dragon_xp_multiplier vd.cfg
scoreboard players remove #m vd.tmp 1
scoreboard players operation #t vd.tmp *= #m vd.tmp
execute if score #m vd.tmp matches 1.. run function void_dragon:reward/xp/spawn_loop
