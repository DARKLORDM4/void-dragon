# cycles 'Crystal beacons' to its next value
execute if score crystal_beacon vd.cfg matches 1 run return run scoreboard players set crystal_beacon vd.cfg 0
execute if score crystal_beacon vd.cfg matches 0 run return run scoreboard players set crystal_beacon vd.cfg 1
return run scoreboard players set crystal_beacon vd.cfg 1
