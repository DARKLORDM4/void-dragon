# context: as/at the crashfx marker (island centre, y=75). Spins faster the longer the crash charges.
tp @s ~ ~ ~ ~14 0
execute if score #cr vd.tmp matches 60.. run tp @s ~ ~ ~ ~10 0
execute if score #cr vd.tmp matches 90.. run tp @s ~ ~ ~ ~14 0
execute if score #cr vd.tmp matches ..100 run function void_dragon:attack/gravity/arms_wide
execute if score #cr vd.tmp matches 101.. run function void_dragon:attack/gravity/arms_tight
