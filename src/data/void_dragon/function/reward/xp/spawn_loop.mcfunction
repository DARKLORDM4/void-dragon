# spawns orbs of at most 20000 xp each until #t is used up (an orb value is limited to 32767)
execute if score #t vd.tmp matches 20001.. run scoreboard players set #p vd.tmp 20000
execute if score #t vd.tmp matches ..20000 run scoreboard players operation #p vd.tmp = #t vd.tmp
execute store result storage void_dragon:xp v int 1 run scoreboard players get #p vd.tmp
function void_dragon:reward/xp/spawn with storage void_dragon:xp
scoreboard players operation #t vd.tmp -= #p vd.tmp
execute if score #t vd.tmp matches 1.. run function void_dragon:reward/xp/spawn_loop
