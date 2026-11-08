# outer tower 4: base (25, 61); obsidian to y=120, bedrock y=121, crystal y=122
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=25,y=40,z=61,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=25,y=40,z=61,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 22 50 59 28 120 63 obsidian
fill 23 50 58 27 120 64 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 25 121 61 bedrock
summon end_crystal 25.5 122 61.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 25.5 122 61.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
