# outer tower 14: base (-52, -40); obsidian to y=112, bedrock y=113, crystal y=114
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-52,y=40,z=-40,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-52,y=40,z=-40,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -55 50 -42 -49 112 -38 obsidian
fill -54 50 -43 -50 112 -37 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -52 113 -40 bedrock
summon end_crystal -51.5 114 -39.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -51.5 114 -39.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
