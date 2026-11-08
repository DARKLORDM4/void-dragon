# outer tower 10: base (-61, 25); obsidian to y=128, bedrock y=129, crystal y=130
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-61,y=40,z=25,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-61,y=40,z=25,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -64 50 23 -58 128 27 obsidian
fill -63 50 22 -59 128 28 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -61 129 25 bedrock
summon end_crystal -60.5 130 25.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -60.5 130 25.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
