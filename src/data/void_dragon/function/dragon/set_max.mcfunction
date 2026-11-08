# context: the dragon. Gives it the configured health (dragonhealth, any amount), at #keep thousandths of full.
# Minecraft caps real health at 1024, so a bigger dragon keeps 1024 real health and every hit on it is
# shrunk by 1024 / dragonhealth (dragon/scale_hit). The boss bar then still shows the true share left.
execute if score dragonhealth vd.cfg matches ..0 run scoreboard players set dragonhealth vd.cfg 1
scoreboard players operation @s vd.true_hp = dragonhealth vd.cfg
scoreboard players operation @s vd.health_max = @s vd.true_hp
scoreboard players operation @s vd.health_max < #k1024 vd.k
execute store result storage void_dragon:storage boot.hp int 1 run scoreboard players get @s vd.health_max
scoreboard players operation #part vd.tmp = @s vd.health_max
scoreboard players operation #part vd.tmp *= #keep vd.tmp
execute store result storage void_dragon:storage boot.now float 0.001 run scoreboard players get #part vd.tmp
function void_dragon:dragon/apply_health with storage void_dragon:storage boot
scoreboard players reset @s vd.cap
