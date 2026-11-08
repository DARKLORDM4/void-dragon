# outer tower 8: base (-40, 52); obsidian to y=104, bedrock y=105, crystal y=106
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-40,y=40,z=52,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-40,y=40,z=52,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -43 50 50 -37 104 54 obsidian
fill -42 50 49 -38 104 55 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -40 105 52 bedrock
summon end_crystal -39.5 106 52.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -39.5 106 52.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
