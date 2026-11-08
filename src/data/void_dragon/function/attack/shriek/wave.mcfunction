# macro (r): the Void Shriek wave radius this tick (5 blocks/tick, up to ~195). Everyone the wave reaches is pushed once.
$execute in the_end positioned 0 80 0 as @a[gamemode=!creative,gamemode=!spectator,distance=..$(r),tag=!vd.shrieked] at @s run function void_dragon:attack/shriek/hit
# three glowing rings (ground, dragon height, tower height)
scoreboard players set #ray vd.tmp 0
execute in the_end positioned 0 68 0 rotated 0 0 run function void_dragon:attack/shriek/ring_ray with storage void_dragon:shriek
scoreboard players set #ray vd.tmp 0
execute in the_end positioned 0 98 0 rotated 0 0 run function void_dragon:attack/shriek/ring_ray with storage void_dragon:shriek
scoreboard players set #ray vd.tmp 0
execute in the_end positioned 0 128 0 rotated 0 0 run function void_dragon:attack/shriek/ring_ray with storage void_dragon:shriek
