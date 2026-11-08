# outer tower 6: base (-9, 65); obsidian to y=112, bedrock y=113, crystal y=114
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-9,y=40,z=65,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-9,y=40,z=65,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -12 50 63 -6 112 67 obsidian
fill -11 50 62 -7 112 68 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -9 113 65 bedrock
summon end_crystal -8.5 114 65.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -8.5 114 65.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
