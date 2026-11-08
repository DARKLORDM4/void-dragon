# outer tower 23: base (65, -9); obsidian to y=108, bedrock y=109, crystal y=110
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=65,y=40,z=-9,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=65,y=40,z=-9,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 63 50 -10 67 108 -8 obsidian
fill 64 50 -11 66 108 -7 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 65 109 -9 bedrock
summon end_crystal 65.5 110 -8.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 65.5 110 -8.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
