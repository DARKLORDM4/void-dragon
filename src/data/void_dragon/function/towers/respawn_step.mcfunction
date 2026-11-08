# Run every tick from fx/respawn/tick while the End ritual is summoning a new dragon.
# The 10 original towers relight at ticks 100,140,...,500 (vanilla). The 24 outer towers relight
# one after another between tick 100 and tick 468, with an explosion/flash/beam each.

execute if score respawn_t vd.state matches 100 in the_end if loaded 62 64 6 if loaded 68 64 12 if loaded 62 64 12 if loaded 68 64 6 run function void_dragon:towers/tower_0
execute if score respawn_t vd.state matches 100 in the_end if loaded 62 64 6 if loaded 68 64 12 if loaded 62 64 12 if loaded 68 64 6 positioned 65.5 106 9.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 116 in the_end if loaded 59 64 23 if loaded 63 64 27 if loaded 59 64 27 if loaded 63 64 23 run function void_dragon:towers/tower_1
execute if score respawn_t vd.state matches 116 in the_end if loaded 59 64 23 if loaded 63 64 27 if loaded 59 64 27 if loaded 63 64 23 positioned 61.5 134 25.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 132 in the_end if loaded 49 64 37 if loaded 55 64 43 if loaded 49 64 43 if loaded 55 64 37 run function void_dragon:towers/tower_2
execute if score respawn_t vd.state matches 132 in the_end if loaded 49 64 37 if loaded 55 64 43 if loaded 49 64 43 if loaded 55 64 37 positioned 52.5 130 40.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 148 in the_end if loaded 38 64 50 if loaded 42 64 54 if loaded 38 64 54 if loaded 42 64 50 run function void_dragon:towers/tower_3
execute if score respawn_t vd.state matches 148 in the_end if loaded 38 64 50 if loaded 42 64 54 if loaded 38 64 54 if loaded 42 64 50 positioned 40.5 126 52.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 164 in the_end if loaded 22 64 58 if loaded 28 64 64 if loaded 22 64 64 if loaded 28 64 58 run function void_dragon:towers/tower_4
execute if score respawn_t vd.state matches 164 in the_end if loaded 22 64 58 if loaded 28 64 64 if loaded 22 64 64 if loaded 28 64 58 positioned 25.5 122 61.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 180 in the_end if loaded 7 64 63 if loaded 11 64 67 if loaded 7 64 67 if loaded 11 64 63 run function void_dragon:towers/tower_5
execute if score respawn_t vd.state matches 180 in the_end if loaded 7 64 63 if loaded 11 64 67 if loaded 7 64 67 if loaded 11 64 63 positioned 9.5 118 65.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 196 in the_end if loaded -12 64 62 if loaded -6 64 68 if loaded -12 64 68 if loaded -6 64 62 run function void_dragon:towers/tower_6
execute if score respawn_t vd.state matches 196 in the_end if loaded -12 64 62 if loaded -6 64 68 if loaded -12 64 68 if loaded -6 64 62 positioned -8.5 114 65.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 212 in the_end if loaded -27 64 59 if loaded -23 64 63 if loaded -27 64 63 if loaded -23 64 59 run function void_dragon:towers/tower_7
execute if score respawn_t vd.state matches 212 in the_end if loaded -27 64 59 if loaded -23 64 63 if loaded -27 64 63 if loaded -23 64 59 positioned -24.5 110 61.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 228 in the_end if loaded -43 64 49 if loaded -37 64 55 if loaded -43 64 55 if loaded -37 64 49 run function void_dragon:towers/tower_8
execute if score respawn_t vd.state matches 228 in the_end if loaded -43 64 49 if loaded -37 64 55 if loaded -43 64 55 if loaded -37 64 49 positioned -39.5 106 52.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 244 in the_end if loaded -54 64 38 if loaded -50 64 42 if loaded -54 64 42 if loaded -50 64 38 run function void_dragon:towers/tower_9
execute if score respawn_t vd.state matches 244 in the_end if loaded -54 64 38 if loaded -50 64 42 if loaded -54 64 42 if loaded -50 64 38 positioned -51.5 134 40.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 260 in the_end if loaded -64 64 22 if loaded -58 64 28 if loaded -64 64 28 if loaded -58 64 22 run function void_dragon:towers/tower_10
execute if score respawn_t vd.state matches 260 in the_end if loaded -64 64 22 if loaded -58 64 28 if loaded -64 64 28 if loaded -58 64 22 positioned -60.5 130 25.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 276 in the_end if loaded -67 64 7 if loaded -63 64 11 if loaded -67 64 11 if loaded -63 64 7 run function void_dragon:towers/tower_11
execute if score respawn_t vd.state matches 276 in the_end if loaded -67 64 7 if loaded -63 64 11 if loaded -67 64 11 if loaded -63 64 7 positioned -64.5 126 9.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 292 in the_end if loaded -68 64 -12 if loaded -62 64 -6 if loaded -68 64 -6 if loaded -62 64 -12 run function void_dragon:towers/tower_12
execute if score respawn_t vd.state matches 292 in the_end if loaded -68 64 -12 if loaded -62 64 -6 if loaded -68 64 -6 if loaded -62 64 -12 positioned -64.5 122 -8.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 308 in the_end if loaded -63 64 -27 if loaded -59 64 -23 if loaded -63 64 -23 if loaded -59 64 -27 run function void_dragon:towers/tower_13
execute if score respawn_t vd.state matches 308 in the_end if loaded -63 64 -27 if loaded -59 64 -23 if loaded -63 64 -23 if loaded -59 64 -27 positioned -60.5 118 -24.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 324 in the_end if loaded -55 64 -43 if loaded -49 64 -37 if loaded -55 64 -37 if loaded -49 64 -43 run function void_dragon:towers/tower_14
execute if score respawn_t vd.state matches 324 in the_end if loaded -55 64 -43 if loaded -49 64 -37 if loaded -55 64 -37 if loaded -49 64 -43 positioned -51.5 114 -39.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 340 in the_end if loaded -42 64 -54 if loaded -38 64 -50 if loaded -42 64 -50 if loaded -38 64 -54 run function void_dragon:towers/tower_15
execute if score respawn_t vd.state matches 340 in the_end if loaded -42 64 -54 if loaded -38 64 -50 if loaded -42 64 -50 if loaded -38 64 -54 positioned -39.5 110 -51.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 356 in the_end if loaded -28 64 -64 if loaded -22 64 -58 if loaded -28 64 -58 if loaded -22 64 -64 run function void_dragon:towers/tower_16
execute if score respawn_t vd.state matches 356 in the_end if loaded -28 64 -64 if loaded -22 64 -58 if loaded -28 64 -58 if loaded -22 64 -64 positioned -24.5 106 -60.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 372 in the_end if loaded -11 64 -67 if loaded -7 64 -63 if loaded -11 64 -63 if loaded -7 64 -67 run function void_dragon:towers/tower_17
execute if score respawn_t vd.state matches 372 in the_end if loaded -11 64 -67 if loaded -7 64 -63 if loaded -11 64 -63 if loaded -7 64 -67 positioned -8.5 134 -64.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 388 in the_end if loaded 6 64 -68 if loaded 12 64 -62 if loaded 6 64 -62 if loaded 12 64 -68 run function void_dragon:towers/tower_18
execute if score respawn_t vd.state matches 388 in the_end if loaded 6 64 -68 if loaded 12 64 -62 if loaded 6 64 -62 if loaded 12 64 -68 positioned 9.5 130 -64.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 404 in the_end if loaded 23 64 -63 if loaded 27 64 -59 if loaded 23 64 -59 if loaded 27 64 -63 run function void_dragon:towers/tower_19
execute if score respawn_t vd.state matches 404 in the_end if loaded 23 64 -63 if loaded 27 64 -59 if loaded 23 64 -59 if loaded 27 64 -63 positioned 25.5 126 -60.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 420 in the_end if loaded 37 64 -55 if loaded 43 64 -49 if loaded 37 64 -49 if loaded 43 64 -55 run function void_dragon:towers/tower_20
execute if score respawn_t vd.state matches 420 in the_end if loaded 37 64 -55 if loaded 43 64 -49 if loaded 37 64 -49 if loaded 43 64 -55 positioned 40.5 122 -51.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 436 in the_end if loaded 50 64 -42 if loaded 54 64 -38 if loaded 50 64 -38 if loaded 54 64 -42 run function void_dragon:towers/tower_21
execute if score respawn_t vd.state matches 436 in the_end if loaded 50 64 -42 if loaded 54 64 -38 if loaded 50 64 -38 if loaded 54 64 -42 positioned 52.5 118 -39.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 452 in the_end if loaded 58 64 -28 if loaded 64 64 -22 if loaded 58 64 -22 if loaded 64 64 -28 run function void_dragon:towers/tower_22
execute if score respawn_t vd.state matches 452 in the_end if loaded 58 64 -28 if loaded 64 64 -22 if loaded 58 64 -22 if loaded 64 64 -28 positioned 61.5 114 -24.5 run function void_dragon:towers/relight_fx
execute if score respawn_t vd.state matches 468 in the_end if loaded 63 64 -11 if loaded 67 64 -7 if loaded 63 64 -7 if loaded 67 64 -11 run function void_dragon:towers/tower_23
execute if score respawn_t vd.state matches 468 in the_end if loaded 63 64 -11 if loaded 67 64 -7 if loaded 63 64 -7 if loaded 67 64 -11 positioned 65.5 110 -8.5 run function void_dragon:towers/relight_fx
