# cycles 'Last stand' to its next value
execute if score laststand vd.cfg matches 1 run return run scoreboard players set laststand vd.cfg 0
execute if score laststand vd.cfg matches 0 run return run scoreboard players set laststand vd.cfg 1
return run scoreboard players set laststand vd.cfg 1
