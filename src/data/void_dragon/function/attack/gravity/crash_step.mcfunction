# context: the dragon. Radius = (tick - 113) * 5 (ticks 114..124 -> 5..55 blocks)
scoreboard players operation #pr vd.tmp = @s vd.pull
scoreboard players remove #pr vd.tmp 113
scoreboard players set #p3 vd.tmp 5
scoreboard players operation #pr vd.tmp *= #p3 vd.tmp
execute store result storage void_dragon:crash r int 1 run scoreboard players get #pr vd.tmp
function void_dragon:attack/gravity/crash_wave with storage void_dragon:crash
