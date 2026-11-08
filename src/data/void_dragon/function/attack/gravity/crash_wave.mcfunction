# macro (r): the crash shockwave radius this tick. Damages every player the ring touches (once).
$execute positioned 0 66 0 as @a[gamemode=!creative,gamemode=!spectator,distance=..$(r),tag=!vd.crashed] at @s run function void_dragon:attack/gravity/crash_hit
scoreboard players set #ray vd.tmp 0
execute positioned 0 66 0 rotated 0 0 run function void_dragon:attack/gravity/crash_ray with storage void_dragon:crash
