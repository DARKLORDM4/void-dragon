# outer tower 2: base (52, 40); obsidian to y=128, bedrock y=129, crystal y=130
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=52,y=40,z=40,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=52,y=40,z=40,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 49 50 38 55 128 42 obsidian
fill 50 50 37 54 128 43 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 52 129 40 bedrock
summon end_crystal 52.5 130 40.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 52.5 130 40.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
