# context: the dragon, once a second. A tall column of light rises from every standing tower crystal so you can find it.
execute as @e[type=end_crystal,nbt={ShowBottom:1b},distance=..160] at @s run particle end_rod ~ ~3 ~ 0.05 8 0.05 0 12 force @a[distance=..200]
execute as @e[type=end_crystal,nbt={ShowBottom:1b},distance=..160] at @s run particle dust{color:[0.85,0.7,1.0],scale:1.5} ~ ~14 ~ 0.1 6 0.1 0 6 force @a[distance=..200]
