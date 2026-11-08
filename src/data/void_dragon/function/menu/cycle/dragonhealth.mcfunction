# cycles 'Dragon health' to its next value
execute if score dragonhealth vd.cfg matches 150 run return run scoreboard players set dragonhealth vd.cfg 200
execute if score dragonhealth vd.cfg matches 200 run return run scoreboard players set dragonhealth vd.cfg 300
execute if score dragonhealth vd.cfg matches 300 run return run scoreboard players set dragonhealth vd.cfg 400
execute if score dragonhealth vd.cfg matches 400 run return run scoreboard players set dragonhealth vd.cfg 500
execute if score dragonhealth vd.cfg matches 500 run return run scoreboard players set dragonhealth vd.cfg 600
execute if score dragonhealth vd.cfg matches 600 run return run scoreboard players set dragonhealth vd.cfg 800
execute if score dragonhealth vd.cfg matches 800 run return run scoreboard players set dragonhealth vd.cfg 1024
execute if score dragonhealth vd.cfg matches 1024 run return run scoreboard players set dragonhealth vd.cfg 1500
execute if score dragonhealth vd.cfg matches 1500 run return run scoreboard players set dragonhealth vd.cfg 2000
execute if score dragonhealth vd.cfg matches 2000 run return run scoreboard players set dragonhealth vd.cfg 3000
execute if score dragonhealth vd.cfg matches 3000 run return run scoreboard players set dragonhealth vd.cfg 5000
execute if score dragonhealth vd.cfg matches 5000 run return run scoreboard players set dragonhealth vd.cfg 150
return run scoreboard players set dragonhealth vd.cfg 300
