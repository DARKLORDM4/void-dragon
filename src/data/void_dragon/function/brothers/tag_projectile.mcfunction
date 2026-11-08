# context: an arrow or trident seen for the first time
tag @s add vd.pchk
execute on origin if entity @s[type=player] run tag @n[tag=vd.pchk,tag=!vd.parrow,distance=..0.1] add vd.parrow
