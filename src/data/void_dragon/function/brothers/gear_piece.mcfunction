# macro: who, slot. Rolls one piece against #lc (percent) and drops it if it wins.
$execute unless data storage void_dragon:storage bro_gear.$(who).$(slot) run return 0
execute store result score #r vd.tmp run random value 1..100
execute if score #r vd.tmp > #lc vd.tmp run return 0
summon item ~ ~0.6 ~ {Item:{id:"minecraft:stone",count:1},Tags:["vd.gearnew"],PickupDelay:20}
$data modify entity @n[type=item,tag=vd.gearnew] Item set from storage void_dragon:storage bro_gear.$(who).$(slot)
tag @e[type=item,tag=vd.gearnew] remove vd.gearnew
