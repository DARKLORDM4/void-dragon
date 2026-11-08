# outer tower 1: base (61, 25); obsidian to y=132, bedrock y=133, crystal y=134, caged
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=61,y=40,z=25,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=61,y=40,z=25,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 59 50 24 63 132 26 obsidian
fill 60 50 23 62 132 27 obsidian
# 3) vanilla-style cage: solid box of bars, then carve the inside (no floor, bars start at bedrock level)
fill 59 132 23 63 132 27 obsidian
fill 59 133 23 63 136 27 iron_bars
fill 60 133 24 62 135 26 air
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 61 133 25 bedrock
summon end_crystal 61.5 134 25.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 61.5 134 25.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall","vd.caged"]}
