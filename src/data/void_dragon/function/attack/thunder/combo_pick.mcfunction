# context: the dragon. Picks the partner attack; if it cannot start (disabled / already running) another one is tried.
execute store result score #k vd.tmp run random value 1..4
execute if score #k vd.tmp matches 1 if function void_dragon:attack/room run function void_dragon:attack/thunder/start
execute if score #k vd.tmp matches 2 if function void_dragon:attack/room run function void_dragon:attack/gravity/start
execute if score #k vd.tmp matches 3 if function void_dragon:attack/room run function void_dragon:attack/meteor/start
execute if score #k vd.tmp matches 4 if function void_dragon:attack/room run function void_dragon:attack/voidfire/start
# fallbacks: only when NO independent attack is running yet
execute unless score @s vd.thunder matches 1.. unless score @s vd.pull matches 1.. unless score @s vd.meteor matches 1.. unless score @s vd.vfire matches 1.. if function void_dragon:attack/room run function void_dragon:attack/thunder/start
execute unless score @s vd.thunder matches 1.. unless score @s vd.pull matches 1.. unless score @s vd.meteor matches 1.. unless score @s vd.vfire matches 1.. if function void_dragon:attack/room run function void_dragon:attack/gravity/start
execute unless score @s vd.thunder matches 1.. unless score @s vd.pull matches 1.. unless score @s vd.meteor matches 1.. unless score @s vd.vfire matches 1.. if function void_dragon:attack/room run function void_dragon:attack/meteor/start
execute unless score @s vd.thunder matches 1.. unless score @s vd.pull matches 1.. unless score @s vd.meteor matches 1.. unless score @s vd.vfire matches 1.. if function void_dragon:attack/room run function void_dragon:attack/voidfire/start
