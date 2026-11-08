# macro: kind (void|star|blood), r = start radius x10, dr = change per tick x10 (negative = implodes), life = ticks
$summon marker ~ ~ ~ {Tags:["vd.fx","vd.fx_$(kind)","vd.fx_new"]}
$scoreboard players set @e[type=marker,tag=vd.fx_new] vd.fxr $(r)
$scoreboard players set @e[type=marker,tag=vd.fx_new] vd.fxd $(dr)
$scoreboard players set @e[type=marker,tag=vd.fx_new] vd.fxl $(life)
scoreboard players set @e[type=marker,tag=vd.fx_new] vd.fxa 0
tag @e[type=marker,tag=vd.fx_new] remove vd.fx_new
