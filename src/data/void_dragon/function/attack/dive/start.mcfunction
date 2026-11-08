# context: the dragon. Starts the VOID DIVE (own state: vd.act 5000..5139). Only when allowed and nothing blocks it.
#   5001..5040  it climbs high above a chosen fighter while a target circle follows them on the ground
#   5040        the circle LOCKS in place (move out of it!)
#   5041..5055  it hangs in the sky, aiming
#   5056..      it plunges onto the circle at 4 blocks/tick
#   impact      crushing blast: damage + a huge knockback wave, then it climbs away (5101..5130)
execute unless score dive_attack vd.cfg matches 1 run return 0
execute if score shield_up vd.state matches 1 run return 0
execute if entity @s[tag=vd.engaged] run return 0
function void_dragon:attack/dive/begin
