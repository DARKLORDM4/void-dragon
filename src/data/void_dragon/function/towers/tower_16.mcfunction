# outer tower 16: base (-25, -61); obsidian to y=104, bedrock y=105, crystal y=106
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-25,y=40,z=-61,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-25,y=40,z=-61,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -28 50 -63 -22 104 -59 obsidian
fill -27 50 -64 -23 104 -58 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -25 105 -61 bedrock
summon end_crystal -24.5 106 -60.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -24.5 106 -60.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
