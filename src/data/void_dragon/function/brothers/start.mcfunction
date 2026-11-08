# context: the dragon, once, when it first drops to 50% health.
# Starts a 5 second intro, then the Voidborn Brothers arrive.
tag @s add vd.brothers_done
function void_dragon:brothers/clear
scoreboard players set bro_active vd.state 1
# the dragon is shielded until both brothers are dead
function void_dragon:shield/start_brothers
scoreboard players set bro_intro vd.state 1
scoreboard players set bro_spawned vd.state 0
execute in the_end positioned 0 0 9 positioned over world_surface run summon marker ~ ~ ~ {Tags:["vd.bro_spawnK"]}
execute in the_end positioned 0 0 9 positioned over world_surface run summon marker ~ ~20 ~ {Tags:["vd.bro_spawnA"]}
execute in the_end positioned 0 80 0 run tellraw @a[distance=..180] [{"text":"✦ ","color":"dark_purple"},{"text":"The void tears open... something answers the dragon's call.","color":"light_purple","italic":true}]
execute in the_end positioned 0 80 0 run playsound minecraft:block.end_portal.spawn hostile @a[distance=..180] ~ ~ ~ 10 .5
# shockwave across the island
execute in the_end positioned 0 64.3 0 run function void_dragon:fx/ring {kind:"void",r:20,dr:20,life:40}
