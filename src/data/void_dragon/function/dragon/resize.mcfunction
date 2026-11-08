# context: a dragon mid-fight whose health setting just changed. Keeps its current share (vd.hp, in thousandths).
function void_dragon:dragon/read
scoreboard players operation #keep vd.tmp = @s vd.hp
execute if score #keep vd.tmp matches ..0 run scoreboard players set #keep vd.tmp 1
execute if score #keep vd.tmp matches 1001.. run scoreboard players set #keep vd.tmp 1000
function void_dragon:dragon/set_max
function void_dragon:dragon/read
