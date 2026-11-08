# cycles 'Meteor Rain' to its next value
execute if score meteor_attack vd.cfg matches 1 run return run scoreboard players set meteor_attack vd.cfg 0
execute if score meteor_attack vd.cfg matches 0 run return run scoreboard players set meteor_attack vd.cfg 1
return run scoreboard players set meteor_attack vd.cfg 1
