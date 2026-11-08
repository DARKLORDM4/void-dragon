# outer tower 19: base (25, -61); obsidian to y=124, bedrock y=125, crystal y=126
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=25,y=40,z=-61,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=25,y=40,z=-61,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 23 50 -62 27 124 -60 obsidian
fill 24 50 -63 26 124 -59 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 25 125 -61 bedrock
summon end_crystal 25.5 126 -60.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 25.5 126 -60.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
