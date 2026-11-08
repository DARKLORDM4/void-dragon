# context: the dragon reaches 1/10 health: LAST STAND. Its attacks come in pairs, one pair after another,
# each pair starting the moment the previous one ends: thunder + gravity, meteors + void fire, then both pairs once more.
tag @s add vd.laststand
scoreboard players set @s vd.lst 1
scoreboard players set @s vd.lsg 0
scoreboard players set @s vd.lsw 0
function void_dragon:phase/laststand/start
function void_dragon:phase/laststand/next_group
execute in the_end positioned 0 64.3 0 run function void_dragon:fx/ring {kind:"blood",r:20,dr:20,life:40}
