# context: a stuck phantom. Lifts it 8 blocks into the open and gives it a fresh circling point well above.
scoreboard players set @s vd.stuck 0
particle reverse_portal ~ ~ ~ .4 .4 .4 .1 15 force @a[distance=..64]
tp @s ~ ~8 ~
execute positioned ~ ~18 ~ run function void_dragon:towers/warden_home
