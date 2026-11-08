# outer tower 7: base (-25, 61); obsidian to y=108, bedrock y=109, crystal y=110
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-25,y=40,z=61,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-25,y=40,z=61,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -27 50 60 -23 108 62 obsidian
fill -26 50 59 -24 108 63 obsidian
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -25 109 61 bedrock
summon end_crystal -24.5 110 61.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -24.5 110 61.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall"]}
