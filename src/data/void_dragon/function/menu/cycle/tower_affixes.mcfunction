# cycles 'Tower affixes' to its next value
execute if score tower_affixes vd.cfg matches 1 run return run scoreboard players set tower_affixes vd.cfg 0
execute if score tower_affixes vd.cfg matches 0 run return run scoreboard players set tower_affixes vd.cfg 1
return run scoreboard players set tower_affixes vd.cfg 1
