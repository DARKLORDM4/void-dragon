# cycles 'Void Quake' to its next value
execute if score slam_attack vd.cfg matches 1 run return run scoreboard players set slam_attack vd.cfg 0
execute if score slam_attack vd.cfg matches 0 run return run scoreboard players set slam_attack vd.cfg 1
return run scoreboard players set slam_attack vd.cfg 1
