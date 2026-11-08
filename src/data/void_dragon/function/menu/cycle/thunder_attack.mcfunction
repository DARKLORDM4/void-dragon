# cycles 'Thunderstrike' to its next value
execute if score thunder_attack vd.cfg matches 1 run return run scoreboard players set thunder_attack vd.cfg 0
execute if score thunder_attack vd.cfg matches 0 run return run scoreboard players set thunder_attack vd.cfg 1
return run scoreboard players set thunder_attack vd.cfg 1
