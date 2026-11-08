# context: the dragon, once per second from 2/3 health (only while a player is nearby)
# retry the guards until all of them exist (chunks may not have been loaded yet)
execute unless score guards_done vd.state matches 1 run function void_dragon:minions/guards

scoreboard players add @s vd.wave 1
scoreboard players set #int vd.tmp 25
execute if score desperate vd.state matches 1 run scoreboard players set #int vd.tmp 12
execute if score @s vd.wave >= #int vd.tmp run function void_dragon:minions/wave
