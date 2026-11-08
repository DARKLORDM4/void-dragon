# context: the dragon. Starts the VOID QUAKE slam (own state: vd.act 5200..5339). Only when allowed and nothing blocks it.
#   5201..5240  it flies over a fighter (the spot is marked, 18 blocks up)
#   5241..5255  it rears up, gathering the void
#   5256..      it crashes straight down and hits the island
#   impact      anyone within 4 blocks is crushed; THREE quake rings roll out along the ground, 15 ticks apart.
#               A ring only hurts you if you're standing on the ground when it passes - JUMP it!
#   then it stays low for 2 seconds (a moment to strike it) and climbs back up
execute unless score slam_attack vd.cfg matches 1 run return 0
execute if score shield_up vd.state matches 1 run return 0
execute if entity @s[tag=vd.engaged] run return 0
function void_dragon:attack/slam/begin
