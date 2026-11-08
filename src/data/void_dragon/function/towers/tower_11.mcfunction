# outer tower 11: base (-65, 9); obsidian to y=124, bedrock y=125, crystal y=126
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-65,y=40,z=9,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-65,y=40,z=9,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -67 50 8 -63 124 10 obsidian
fill -66 50 7 -64 124 11 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -65 125 9 bedrock
summon end_crystal -64.5 126 9.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -64.5 126 9.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
