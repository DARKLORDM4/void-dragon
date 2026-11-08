# cycles 'Victory effects' to its next value
execute if score victory_fx vd.cfg matches 1 run return run scoreboard players set victory_fx vd.cfg 0
execute if score victory_fx vd.cfg matches 0 run return run scoreboard players set victory_fx vd.cfg 1
return run scoreboard players set victory_fx vd.cfg 1
