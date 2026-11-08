# outer tower 12: base (-65, -9); obsidian to y=120, bedrock y=121, crystal y=122
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-65,y=40,z=-9,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-65,y=40,z=-9,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -68 50 -11 -62 120 -7 obsidian
fill -67 50 -12 -63 120 -6 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -65 121 -9 bedrock
summon end_crystal -64.5 122 -8.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -64.5 122 -8.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
