# outer tower 13: base (-61, -25); obsidian to y=116, bedrock y=117, crystal y=118, caged
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=-61,y=40,z=-25,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=-61,y=40,z=-25,dx=0,dy=120,dz=0]
# 2) obsidian column
fill -63 50 -26 -59 116 -24 obsidian
fill -62 50 -27 -60 116 -23 obsidian
# 3) vanilla-style cage: solid box of bars, then carve the inside (no floor, bars start at bedrock level)
fill -63 116 -27 -59 116 -23 obsidian
fill -63 117 -27 -59 120 -23 iron_bars
fill -62 117 -26 -60 119 -24 air
# 4) bedrock one block above the obsidian, crystal standing on it
setblock -61 117 -25 bedrock
summon end_crystal -60.5 118 -24.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker -60.5 118 -24.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall","vd.caged"]}
