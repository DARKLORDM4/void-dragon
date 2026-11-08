# outer tower 22: base (61, -25); obsidian to y=112, bedrock y=113, crystal y=114
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=61,y=40,z=-25,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=61,y=40,z=-25,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 58 50 -27 64 112 -23 obsidian
fill 59 50 -28 63 112 -22 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 61 113 -25 bedrock
summon end_crystal 61.5 114 -24.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 61.5 114 -24.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
