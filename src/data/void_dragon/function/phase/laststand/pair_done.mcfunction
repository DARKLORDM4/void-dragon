# context: the dragon. Succeeds when both attacks of the current pair have finished.
execute if score @s vd.lsg matches 1 if score @s vd.thunder matches 1.. run return 0
execute if score @s vd.lsg matches 1 if score @s vd.pull matches 1.. run return 0
execute if score @s vd.lsg matches 3 if score @s vd.thunder matches 1.. run return 0
execute if score @s vd.lsg matches 3 if score @s vd.pull matches 1.. run return 0
execute if score @s vd.lsg matches 2 if score @s vd.meteor matches 1.. run return 0
execute if score @s vd.lsg matches 2 if score @s vd.vfire matches 1.. run return 0
execute if score @s vd.lsg matches 4 if score @s vd.meteor matches 1.. run return 0
execute if score @s vd.lsg matches 4 if score @s vd.vfire matches 1.. run return 0
return 2
