# context: the dragon. Things that happen once when its health drops below a mark.
# 2/3: phase II
execute if entity @s[tag=!vd.stage2] if score @s vd.hp matches ..666 run function void_dragon:phase/stage2
# 1/2: the Voidborn Brothers (or, with them switched off, the crystal shield)
execute if score brothers vd.cfg matches 1 if entity @s[tag=!vd.brothers_done] if score @s vd.hp matches ..500 run function void_dragon:brothers/start
execute if score crystal_shield vd.cfg matches 1 unless score brothers vd.cfg matches 1 if entity @s[tag=!vd.shieldphase_done] if score @s vd.hp matches ..500 run function void_dragon:shield/start
# 1/3: desperate
execute if entity @s[tag=!vd.stage3] if score @s vd.hp matches ..333 run function void_dragon:phase/stage3
# 1/10: last stand
execute if score laststand vd.cfg matches 1 if entity @s[tag=!vd.laststand] if score @s vd.hp matches ..100 run function void_dragon:phase/last_stand_begin
