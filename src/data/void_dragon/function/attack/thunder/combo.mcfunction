# context: the dragon, on the tick another attack starts. combo_attacks = chance in percent (0 = off, 100 = always).
# One of the independent attacks (thunder, gravity pull, meteor rain, void fireballs) joins the attack, picked at random.
execute store result score #r vd.tmp run random value 1..100
execute unless score desperate vd.state matches 1 if score #r vd.tmp <= combo_attacks vd.cfg run function void_dragon:attack/thunder/combo_pick
# desperate: always a combo, with TWO partner attacks
execute if score desperate vd.state matches 1 run function void_dragon:attack/thunder/combo_pick
execute if score desperate vd.state matches 1 run function void_dragon:attack/thunder/combo_pick
function void_dragon:attack/warn/combo
