# context: the dragon, twice a second while the atmosphere is on: motes of light drift up from the standing tower crystals
execute as @e[type=end_crystal,nbt={ShowBottom:1b},distance=..160,sort=random,limit=6] at @s run particle end_rod ~ ~0.8 ~ .5 .4 .5 0.02 2 force @a[distance=..128]
execute as @e[type=end_crystal,nbt={ShowBottom:1b},distance=..160,sort=random,limit=6] at @s run particle reverse_portal ~ ~0.8 ~ .3 .3 .3 .3 3 force @a[distance=..128]
