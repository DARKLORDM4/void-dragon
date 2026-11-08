# cycles 'Brothers health' to its next value
execute if score brothers_hard vd.cfg matches 0 run return run scoreboard players set brothers_hard vd.cfg 1
execute if score brothers_hard vd.cfg matches 1 run return run scoreboard players set brothers_hard vd.cfg 0
return run scoreboard players set brothers_hard vd.cfg 0
