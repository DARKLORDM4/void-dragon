# context: in the_end at 0 80 0, every tick during the intro
scoreboard players add bro_intro vd.state 1
execute if score bro_intro vd.state matches 40..99 as @e[type=marker,tag=vd.bro_spawnK] at @s run particle portal ~ ~1 ~ .4 1.5 .4 1.5 25 force @a[distance=..128]
execute if score bro_intro vd.state matches 40..99 as @e[type=marker,tag=vd.bro_spawnK] at @s run particle dust{color:[0.35,0.0,0.55],scale:2.0} ~ ~1.5 ~ .3 2 .3 0 6 force @a[distance=..128]
execute if score bro_intro vd.state matches 40..99 as @e[type=marker,tag=vd.bro_spawnA] at @s run particle reverse_portal ~ ~ ~ 1.5 1.5 1.5 .05 25 force @a[distance=..128]
execute if score bro_intro vd.state matches 40..99 as @e[type=marker,tag=vd.bro_spawnA] at @s run particle dust{color:[0.7,0.2,1.0],scale:2.0} ~ ~ ~ 1 1 1 0 6 force @a[distance=..128]
execute if score bro_intro vd.state matches 40 run playsound minecraft:entity.enderman.stare hostile @a[distance=..180] ~ ~ ~ 10 .5
execute if score bro_intro vd.state matches 70 run playsound minecraft:entity.warden.emerge hostile @a[distance=..180] ~ ~ ~ 10 .8
execute if score bro_intro vd.state matches 100 run function void_dragon:brothers/arrive
