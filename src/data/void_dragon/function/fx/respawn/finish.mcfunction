# in the End: the ritual ended (the dragon has been summoned)
scoreboard players reset respawn_t vd.state
execute positioned 0 64 0 run function void_dragon:fx/ring {kind:"star",r:10,dr:25,life:30}
execute positioned 0 66 0 run function void_dragon:fx/ring {kind:"void",r:10,dr:18,life:35}
playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..200] 0 64 0 6 .6
particle reverse_portal 0 70 0 2 6 2 .6 300 force @a[distance=..200]
