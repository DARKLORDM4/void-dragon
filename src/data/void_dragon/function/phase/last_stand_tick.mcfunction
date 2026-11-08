# context: the dragon during LAST STAND, every tick
scoreboard players add @s vd.lst 1
# all 4 pairs done: last stand sequence is over (the dragon keeps its normal attacks)
execute if score @s vd.lsg matches 5.. run return run scoreboard players reset @s vd.lst
# the moment both attacks of the current pair are over, the next pair starts (no pause)
execute if score @s vd.lsg matches 1..4 if function void_dragon:phase/laststand/pair_done run function void_dragon:phase/laststand/next_group
