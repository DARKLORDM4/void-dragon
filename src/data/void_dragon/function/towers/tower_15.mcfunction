# outer tower 15: base (-40, -52); obsidian to y=108, bedrock y=109, crystal y=110
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-40,y=40,z=-52,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-40,y=40,z=-52,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -42 50 -53 -38 108 -51 obsidian
fill -41 50 -54 -39 108 -50 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -40 109 -52 bedrock
summon end_crystal -39.5 110 -51.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -39.5 110 -51.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
