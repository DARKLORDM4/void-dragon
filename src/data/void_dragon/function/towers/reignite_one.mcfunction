# context: as/at a queued crystal-spot marker
tag @s remove vd.pending
setblock ~ ~-1 ~ bedrock
execute if entity @s[tag=vd.ring2] run summon end_crystal ~ ~ ~ {Tags:["vd.outercrystal","vd.ring2","vd.tall"]}
execute if entity @s[tag=!vd.ring2] run summon end_crystal ~ ~ ~
function void_dragon:towers/relight_fx
