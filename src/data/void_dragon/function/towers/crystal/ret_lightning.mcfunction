# lightning marks every player within 24 blocks of the destroyed crystal (the usual thunder warning ring, strike after 30 ticks)
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..24] at @s run summon marker ~ ~ ~ {Tags:["vd.thunder"]}
