# outer tower 21: base (52, -40); obsidian to y=116, bedrock y=117, crystal y=118, caged
# 1) clear anything left from an earlier version of this tower
kill @e[type=marker,tag=vd.tall,x=52,y=40,z=-40,dx=0,dy=120,dz=0]
kill @e[type=end_crystal,x=52,y=40,z=-40,dx=0,dy=120,dz=0]
# 2) obsidian column
fill 50 50 -41 54 116 -39 obsidian
fill 51 50 -42 53 116 -38 obsidian
# 3) vanilla-style cage: solid box of bars, then carve the inside (no floor, bars start at bedrock level)
fill 50 116 -42 54 116 -38 obsidian
fill 50 117 -42 54 120 -38 iron_bars
fill 51 117 -41 53 119 -39 air
# 4) bedrock one block above the obsidian, crystal standing on it
setblock 52 117 -40 bedrock
summon end_crystal 52.5 118 -39.5 {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
summon marker 52.5 118 -39.5 {Tags:["vd.outerspike","vd.crystalspot","vd.ring2","vd.tall","vd.caged"]}
