# context: at the island centre, 4 times a second. Counts the tower crystals that still stand
# (crystals placed by players have no base plate and are not counted) and reports changes.
scoreboard players operation #before vd.tmp = crystals_left vd.state
execute store result score crystals_left vd.state if entity @e[type=end_crystal,distance=..128,nbt={ShowBottom:1b}]
execute if score crystal_counter vd.cfg matches 1 if score crystals_left vd.state < #before vd.tmp if score crystals_left vd.state matches 1.. run title @a[distance=..128] actionbar [{"text":"◆ ","color":"light_purple"},{"score":{"name":"crystals_left","objective":"vd.state"},"color":"white","bold":true},{"text":" crystals still stand","color":"gray"}]
execute if score crystal_counter vd.cfg matches 1 if score crystals_left vd.state < #before vd.tmp if score crystals_left vd.state matches 0 run title @a[distance=..128] actionbar {"text":"◆ Every crystal is shattered! ◆","color":"light_purple","bold":true}
execute if score crystals_left vd.state < #before vd.tmp if score crystals_left vd.state matches 0 run function void_dragon:fx/all_crystals
