# cycles 'Damage cap per hit' to its next value
execute if score dmg_cap vd.cfg matches 0 run return run scoreboard players set dmg_cap vd.cfg 10
execute if score dmg_cap vd.cfg matches 10 run return run scoreboard players set dmg_cap vd.cfg 15
execute if score dmg_cap vd.cfg matches 15 run return run scoreboard players set dmg_cap vd.cfg 20
execute if score dmg_cap vd.cfg matches 20 run return run scoreboard players set dmg_cap vd.cfg 25
execute if score dmg_cap vd.cfg matches 25 run return run scoreboard players set dmg_cap vd.cfg 30
execute if score dmg_cap vd.cfg matches 30 run return run scoreboard players set dmg_cap vd.cfg 40
execute if score dmg_cap vd.cfg matches 40 run return run scoreboard players set dmg_cap vd.cfg 50
execute if score dmg_cap vd.cfg matches 50 run return run scoreboard players set dmg_cap vd.cfg 0
return run scoreboard players set dmg_cap vd.cfg 15
