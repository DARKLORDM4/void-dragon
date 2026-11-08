# cycles 'Damage' to its next value
execute if score dragon_difficulty vd.cfg matches 0 run return run scoreboard players set dragon_difficulty vd.cfg 1
execute if score dragon_difficulty vd.cfg matches 1 run return run scoreboard players set dragon_difficulty vd.cfg 2
execute if score dragon_difficulty vd.cfg matches 2 run return run scoreboard players set dragon_difficulty vd.cfg 0
return run scoreboard players set dragon_difficulty vd.cfg 0
