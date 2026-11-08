# context: the dragon. r = (bosstime - 4361) * 5 blocks
scoreboard players operation #sr vd.tmp = @s vd.act
scoreboard players remove #sr vd.tmp 4361
scoreboard players set #five vd.tmp 5
scoreboard players operation #sr vd.tmp *= #five vd.tmp
execute store result storage void_dragon:shriek r int 1 run scoreboard players get #sr vd.tmp
function void_dragon:attack/shriek/wave with storage void_dragon:shriek
