# context: an arrow near KETHLER or Nightmaw. Succeeds if VEXIS (or his rain) fired it.
execute if entity @s[tag=vd.bro_arrow] run return 1
execute on origin if entity @s[tag=vd.brother] run return 1
return 0
