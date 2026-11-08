# context: the dragon, once a second
function void_dragon:phase/name/apply
execute if score crystal_beacon vd.cfg matches 1 run function void_dragon:towers/beacons
execute if score wardens vd.cfg matches 1 run function void_dragon:towers/wardens
execute if score crystal_turrets vd.cfg matches 1 run function void_dragon:towers/turret/all
function void_dragon:reward/climber
function void_dragon:towers/crystal/second
execute if score minions vd.cfg matches 1 if entity @s[tag=vd.stage2] if entity @p[distance=..128,gamemode=!creative,gamemode=!spectator] run function void_dragon:minions/second
execute unless score outer_built vd.state matches 1 run function void_dragon:towers/build_all
