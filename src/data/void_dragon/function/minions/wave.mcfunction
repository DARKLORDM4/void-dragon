# context: the dragon. A wave of 4 phantoms around a random player, unless 10 or more minions are already alive.
scoreboard players set @s vd.wave 0
execute store result score #n vd.tmp if entity @e[type=phantom,tag=vd.minion]
execute if score #n vd.tmp matches ..9 as @r[gamemode=!creative,gamemode=!spectator,distance=..128] at @s run function void_dragon:minions/spawn_phantoms
