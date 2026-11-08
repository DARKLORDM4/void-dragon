# cycles 'Crystal counter' to its next value
execute if score crystal_counter vd.cfg matches 1 run return run scoreboard players set crystal_counter vd.cfg 0
execute if score crystal_counter vd.cfg matches 0 run return run scoreboard players set crystal_counter vd.cfg 1
return run scoreboard players set crystal_counter vd.cfg 1
