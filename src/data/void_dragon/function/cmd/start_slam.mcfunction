# test command: VOID QUAKE slam right now (ignores the on/off setting; the dragon must be free and you in survival nearby)
execute as @e[type=ender_dragon,tag=!vd.engaged] if score @s vd.act matches 0 at @s run function void_dragon:attack/slam/begin
