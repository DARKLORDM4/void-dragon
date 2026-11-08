# context: the dragon. TAIL SWEEP timeline (vd.tail):
#   1..30   wind-up: the tail coils, growls, warning "JUMP!"
#   31..48  the sweep: a shockwave ring races out along the ground from 3 to ~20 blocks (1 block/tick)
#           players it passes WHILE STANDING ON THE GROUND are hit; jumping over it dodges it
#   49      done -> 6 s cooldown (negative values count back up to 0)
scoreboard players add @s vd.tail 1
execute if score @s vd.tail matches 0 run return run scoreboard players reset @s vd.tail
execute if score @s vd.tail matches ..-1 run return 0
execute if score @s vd.phase matches 9 run return run scoreboard players set @s vd.tail -120

execute if score @s vd.tail matches 2 run tag @a remove vd.tailhit
execute if score @s vd.tail matches 2 run title @a[distance=..48] actionbar {"text":"⚠ Tail sweep - JUMP over the wave!","color":"gold","bold":true}
execute if score @s vd.tail matches 2 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..96] ~ ~ ~ 6 .8
execute if score @s vd.tail matches 15 run playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..96] ~ ~ ~ 6 .5
execute if score @s vd.tail matches 2..30 run particle sweep_attack ~ ~1 ~ 3 .5 3 0 2 force @a[distance=..96]
execute if score @s vd.tail matches 2..30 run particle dust{color:[1.0,0.6,0.1],scale:1.6} ~ ~0.5 ~ 4 .3 4 0 6 force @a[distance=..96]

execute if score @s vd.tail matches 31 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..96] ~ ~ ~ 6 .5
execute if score @s vd.tail matches 31 run playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..96] ~ ~ ~ 4 .6
execute if score @s vd.tail matches 31..48 run function void_dragon:attack/tail/wave
# it turns its back on you while coiling (180 degrees), then whips all the way round during the sweep
execute if score @s vd.tail matches 1..30 run tp @s ~ ~ ~ ~6 ~
execute if score @s vd.tail matches 31..48 run tp @s ~ ~ ~ ~20 ~

execute if score @s vd.tail matches 49.. run scoreboard players set @s vd.tail -120
