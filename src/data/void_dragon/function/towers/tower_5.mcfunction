# outer tower 5: base (9, 65); obsidian to y=116, bedrock y=117, crystal y=118, caged
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=9,y=40,z=65,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=9,y=40,z=65,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 7 50 64 11 116 66 obsidian
fill 8 50 63 10 116 67 obsidian
# 3) vanilla-style cage: solid box of bars, then carve the inside (no floor, bars start at bedrock level)
fill 7 116 63 11 116 67 obsidian
fill 7 117 63 11 120 67 iron_bars
fill 8 117 64 10 119 66 air
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 9 117 65 bedrock
summon end_crystal 9.5 118 65.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 9.5 118 65.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall","vd.caged"]}
