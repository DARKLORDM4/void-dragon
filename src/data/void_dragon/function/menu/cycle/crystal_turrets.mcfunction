# cycles 'Crystal turrets' to its next value
execute if score crystal_turrets vd.cfg matches 1 run return run scoreboard players set crystal_turrets vd.cfg 0
execute if score crystal_turrets vd.cfg matches 0 run return run scoreboard players set crystal_turrets vd.cfg 1
return run scoreboard players set crystal_turrets vd.cfg 1
