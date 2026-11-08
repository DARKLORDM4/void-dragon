# outer tower 20: base (40, -52); obsidian to y=120, bedrock y=121, crystal y=122
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=40,y=40,z=-52,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=40,y=40,z=-52,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 37 50 -54 43 120 -50 obsidian
fill 38 50 -55 42 120 -49 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 40 121 -52 bedrock
summon end_crystal 40.5 122 -51.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 40.5 122 -51.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
