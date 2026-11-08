# Builds the outer ring: 24 towers at radius 66, obsidian tops at y=104..132.
# Safe to call repeatedly: a tower is only built when its chunks are loaded and it has no marker yet.

execute in the_end if loaded 62 64 6 if loaded 68 64 12 if loaded 62 64 12 if loaded 68 64 6 unless entity @e[type=marker,tag=vd.tall,x=65,y=40,z=9,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_0
execute in the_end if loaded 59 64 23 if loaded 63 64 27 if loaded 59 64 27 if loaded 63 64 23 unless entity @e[type=marker,tag=vd.tall,x=61,y=40,z=25,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_1
execute in the_end if loaded 49 64 37 if loaded 55 64 43 if loaded 49 64 43 if loaded 55 64 37 unless entity @e[type=marker,tag=vd.tall,x=52,y=40,z=40,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_2
execute in the_end if loaded 38 64 50 if loaded 42 64 54 if loaded 38 64 54 if loaded 42 64 50 unless entity @e[type=marker,tag=vd.tall,x=40,y=40,z=52,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_3
execute in the_end if loaded 22 64 58 if loaded 28 64 64 if loaded 22 64 64 if loaded 28 64 58 unless entity @e[type=marker,tag=vd.tall,x=25,y=40,z=61,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_4
execute in the_end if loaded 7 64 63 if loaded 11 64 67 if loaded 7 64 67 if loaded 11 64 63 unless entity @e[type=marker,tag=vd.tall,x=9,y=40,z=65,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_5
execute in the_end if loaded -12 64 62 if loaded -6 64 68 if loaded -12 64 68 if loaded -6 64 62 unless entity @e[type=marker,tag=vd.tall,x=-9,y=40,z=65,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_6
execute in the_end if loaded -27 64 59 if loaded -23 64 63 if loaded -27 64 63 if loaded -23 64 59 unless entity @e[type=marker,tag=vd.tall,x=-25,y=40,z=61,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_7
execute in the_end if loaded -43 64 49 if loaded -37 64 55 if loaded -43 64 55 if loaded -37 64 49 unless entity @e[type=marker,tag=vd.tall,x=-40,y=40,z=52,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_8
execute in the_end if loaded -54 64 38 if loaded -50 64 42 if loaded -54 64 42 if loaded -50 64 38 unless entity @e[type=marker,tag=vd.tall,x=-52,y=40,z=40,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_9
execute in the_end if loaded -64 64 22 if loaded -58 64 28 if loaded -64 64 28 if loaded -58 64 22 unless entity @e[type=marker,tag=vd.tall,x=-61,y=40,z=25,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_10
execute in the_end if loaded -67 64 7 if loaded -63 64 11 if loaded -67 64 11 if loaded -63 64 7 unless entity @e[type=marker,tag=vd.tall,x=-65,y=40,z=9,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_11
execute in the_end if loaded -68 64 -12 if loaded -62 64 -6 if loaded -68 64 -6 if loaded -62 64 -12 unless entity @e[type=marker,tag=vd.tall,x=-65,y=40,z=-9,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_12
execute in the_end if loaded -63 64 -27 if loaded -59 64 -23 if loaded -63 64 -23 if loaded -59 64 -27 unless entity @e[type=marker,tag=vd.tall,x=-61,y=40,z=-25,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_13
execute in the_end if loaded -55 64 -43 if loaded -49 64 -37 if loaded -55 64 -37 if loaded -49 64 -43 unless entity @e[type=marker,tag=vd.tall,x=-52,y=40,z=-40,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_14
execute in the_end if loaded -42 64 -54 if loaded -38 64 -50 if loaded -42 64 -50 if loaded -38 64 -54 unless entity @e[type=marker,tag=vd.tall,x=-40,y=40,z=-52,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_15
execute in the_end if loaded -28 64 -64 if loaded -22 64 -58 if loaded -28 64 -58 if loaded -22 64 -64 unless entity @e[type=marker,tag=vd.tall,x=-25,y=40,z=-61,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_16
execute in the_end if loaded -11 64 -67 if loaded -7 64 -63 if loaded -11 64 -63 if loaded -7 64 -67 unless entity @e[type=marker,tag=vd.tall,x=-9,y=40,z=-65,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_17
execute in the_end if loaded 6 64 -68 if loaded 12 64 -62 if loaded 6 64 -62 if loaded 12 64 -68 unless entity @e[type=marker,tag=vd.tall,x=9,y=40,z=-65,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_18
execute in the_end if loaded 23 64 -63 if loaded 27 64 -59 if loaded 23 64 -59 if loaded 27 64 -63 unless entity @e[type=marker,tag=vd.tall,x=25,y=40,z=-61,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_19
execute in the_end if loaded 37 64 -55 if loaded 43 64 -49 if loaded 37 64 -49 if loaded 43 64 -55 unless entity @e[type=marker,tag=vd.tall,x=40,y=40,z=-52,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_20
execute in the_end if loaded 50 64 -42 if loaded 54 64 -38 if loaded 50 64 -38 if loaded 54 64 -42 unless entity @e[type=marker,tag=vd.tall,x=52,y=40,z=-40,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_21
execute in the_end if loaded 58 64 -28 if loaded 64 64 -22 if loaded 58 64 -22 if loaded 64 64 -28 unless entity @e[type=marker,tag=vd.tall,x=61,y=40,z=-25,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_22
execute in the_end if loaded 63 64 -11 if loaded 67 64 -7 if loaded 63 64 -7 if loaded 67 64 -11 unless entity @e[type=marker,tag=vd.tall,x=65,y=40,z=-9,dx=0,dy=120,dz=0] run function void_dragon:towers/tower_23

execute in the_end store result score #outer vd.state if entity @e[type=marker,tag=vd.tall]
execute if score #outer vd.state matches 24 run scoreboard players set outer_built vd.state 1
