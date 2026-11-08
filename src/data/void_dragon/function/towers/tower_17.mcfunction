# outer tower 17: base (-9, -65); obsidian to y=132, bedrock y=133, crystal y=134, caged
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-9,y=40,z=-65,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-9,y=40,z=-65,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -11 50 -66 -7 132 -64 obsidian
fill -10 50 -67 -8 132 -63 obsidian
# 3) vanilla-style cage: solid box of bars, then carve the inside (no floor, bars start at bedrock level)
fill -11 132 -67 -7 132 -63 obsidian
fill -11 133 -67 -7 136 -63 iron_bars
fill -10 133 -66 -8 135 -64 air
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -9 133 -65 bedrock
summon end_crystal -8.5 134 -64.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -8.5 134 -64.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall","vd.caged"]}
