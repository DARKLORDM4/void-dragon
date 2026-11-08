# context: the dragon after a hit bigger than the cap (#capv, health x100): it keeps exactly the cap of it
scoreboard players operation #ch vd.tmp = @s vd.cap
scoreboard players operation #ch vd.tmp -= #capv vd.tmp
execute store result entity @s Health float 0.01 run scoreboard players get #ch vd.tmp
