# outer tower 9: base (-52, 40); obsidian to y=132, bedrock y=133, crystal y=134, caged
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-52,y=40,z=40,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-52,y=40,z=40,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -54 50 39 -50 132 41 obsidian
fill -53 50 38 -51 132 42 obsidian
# 3) vanilla-style cage: solid box of bars, then carve the inside (no floor, bars start at bedrock level)
fill -54 132 38 -50 132 42 obsidian
fill -54 133 38 -50 136 42 iron_bars
fill -53 133 39 -51 135 41 air
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -52 133 40 bedrock
summon end_crystal -51.5 134 40.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -51.5 134 40.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall","vd.caged"]}
