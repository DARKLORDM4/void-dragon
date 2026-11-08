# context: the dragon during the sweep. Ring radius = tail - 28 (3..20 blocks), drawn at the ground below the dragon.
scoreboard players operation #tr vd.tmp = @s vd.tail
scoreboard players remove #tr vd.tmp 28
execute store result storage void_dragon:storage tail.r int 1 run scoreboard players get #tr vd.tmp
execute store result storage void_dragon:storage tail.ri int 1 run scoreboard players remove #tr vd.tmp 1
function void_dragon:attack/tail/ring with storage void_dragon:storage tail
