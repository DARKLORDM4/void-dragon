# context: the dragon. Two waves of lances (now and after 1.5 s), done after 4 s.
scoreboard players add @s vd.lance 1
execute if score @s vd.lance matches 2 as @a[gamemode=!creative,gamemode=!spectator,distance=..128,sort=random,limit=4] at @s run function void_dragon:attack/lances/aim
execute if score @s vd.lance matches 32 if entity @s[tag=vd.stage3] as @a[gamemode=!creative,gamemode=!spectator,distance=..128,sort=random,limit=4] at @s run function void_dragon:attack/lances/aim
execute if score @s vd.lance matches 80.. run scoreboard players reset @s vd.lance
