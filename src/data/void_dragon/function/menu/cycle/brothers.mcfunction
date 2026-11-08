# cycles 'Voidborn Brothers' to its next value
execute if score brothers vd.cfg matches 1 run return run scoreboard players set brothers vd.cfg 0
execute if score brothers vd.cfg matches 0 run return run scoreboard players set brothers vd.cfg 1
return run scoreboard players set brothers vd.cfg 1
