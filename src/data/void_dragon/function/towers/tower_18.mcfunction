# outer tower 18: base (9, -65); obsidian to y=128, bedrock y=129, crystal y=130
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=9,y=40,z=-65,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=9,y=40,z=-65,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 6 50 -67 12 128 -63 obsidian
fill 7 50 -68 11 128 -62 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 9 129 -65 bedrock
summon end_crystal 9.5 130 -64.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 9.5 130 -64.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
