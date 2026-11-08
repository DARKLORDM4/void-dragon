# context: the dragon hits the island at the slam spot
scoreboard players set @s vd.act 5276
scoreboard players set @s vd.spd 0
scoreboard players set @s vd.hdp -500
execute at @n[type=marker,tag=vd.slam_spot] as @a[distance=..4,gamemode=!creative,gamemode=!spectator] run function void_dragon:attack/slam/crush
execute at @n[type=marker,tag=vd.slam_spot] run playsound minecraft:entity.generic.explode hostile @a[distance=..128] ~ ~ ~ 6 .4
execute at @n[type=marker,tag=vd.slam_spot] run playsound minecraft:block.anvil.land hostile @a[distance=..128] ~ ~ ~ 4 .5
execute at @n[type=marker,tag=vd.slam_spot] run particle explosion ~ ~0.5 ~ 2 .2 2 0 12 force @a[distance=..160]
execute at @n[type=marker,tag=vd.slam_spot] run particle block{block_state:"minecraft:end_stone"} ~ ~0.3 ~ 3 .2 3 .4 120 force @a[distance=..160]
# three quake rings, 15 ticks apart (the 2nd and 3rd are born from waiting seeds)
execute at @n[type=marker,tag=vd.slam_spot] run summon marker ~ ~ ~ {Tags:["vd.quake"]}
execute at @n[type=marker,tag=vd.slam_spot] run summon marker ~ ~ ~ {Tags:["vd.quake","vd.quake_wait"]}
execute at @n[type=marker,tag=vd.slam_spot] run summon marker ~ ~ ~ {Tags:["vd.quake","vd.quake_wait"]}
scoreboard players set @e[type=marker,tag=vd.quake,tag=!vd.quake_wait] vd.age 0
execute as @e[type=marker,tag=vd.quake_wait] run scoreboard players set @s vd.age -15
execute as @e[type=marker,tag=vd.quake_wait,limit=1] run scoreboard players set @s vd.age -30
tag @e[type=marker,tag=vd.quake_wait] remove vd.quake_wait
kill @e[type=marker,tag=vd.slam_spot]
