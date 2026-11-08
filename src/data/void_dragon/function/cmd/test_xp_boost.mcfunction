# run this IN THE END near the island: opens the boost window and drops a 100 xp orb at your feet
scoreboard players set xp_boost_timer vd.state 100
summon experience_orb ~ ~1 ~ {Value:100}
tellraw @s [{"text":"[Void Dragon] Spawned a 100 xp orb. Pick it up: you should get 100 x the multiplier (default 20 = 2000 xp).","color":"gray"}]
