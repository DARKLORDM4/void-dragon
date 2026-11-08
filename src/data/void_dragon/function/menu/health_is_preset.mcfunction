# succeeds when dragonhealth is one of the menu presets
execute if score dragonhealth vd.cfg matches 150 run return 1
execute if score dragonhealth vd.cfg matches 200 run return 1
execute if score dragonhealth vd.cfg matches 300 run return 1
execute if score dragonhealth vd.cfg matches 400 run return 1
execute if score dragonhealth vd.cfg matches 500 run return 1
execute if score dragonhealth vd.cfg matches 600 run return 1
execute if score dragonhealth vd.cfg matches 800 run return 1
execute if score dragonhealth vd.cfg matches 1024 run return 1
execute if score dragonhealth vd.cfg matches 1500 run return 1
execute if score dragonhealth vd.cfg matches 2000 run return 1
execute if score dragonhealth vd.cfg matches 3000 run return 1
execute if score dragonhealth vd.cfg matches 5000 run return 1
return 0
