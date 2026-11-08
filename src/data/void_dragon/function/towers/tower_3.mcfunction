# outer tower 3: base (40, 52); obsidian to y=124, bedrock y=125, crystal y=126
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=40,y=40,z=52,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=40,y=40,z=52,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 38 50 51 42 124 53 obsidian
fill 39 50 50 41 124 54 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 40 125 52 bedrock
summon end_crystal 40.5 126 52.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 40.5 126 52.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
