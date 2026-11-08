# outer tower 0: base (65, 9); obsidian to y=104, bedrock y=105, crystal y=106
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=65,y=40,z=9,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=65,y=40,z=9,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 62 50 7 68 104 11 obsidian
fill 63 50 6 67 104 12 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 65 105 9 bedrock
summon end_crystal 65.5 106 9.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 65.5 106 9.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
