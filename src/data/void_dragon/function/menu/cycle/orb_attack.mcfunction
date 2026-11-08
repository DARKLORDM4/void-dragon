# cycles 'Abyssal Orbs' to its next value
execute if score orb_attack vd.cfg matches 1 run return run scoreboard players set orb_attack vd.cfg 0
execute if score orb_attack vd.cfg matches 0 run return run scoreboard players set orb_attack vd.cfg 1
return run scoreboard players set orb_attack vd.cfg 1
