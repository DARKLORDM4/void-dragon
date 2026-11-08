# context: as/at the chosen player
playsound minecraft:entity.phantom.ambient hostile @a[distance=..64] ~ ~ ~ 3 .7
execute rotated 0 0 positioned ^ ^14 ^10 run summon phantom ~ ~ ~ {Tags:["vd.minion"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute rotated 90 0 positioned ^ ^14 ^10 run summon phantom ~ ~ ~ {Tags:["vd.minion"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute rotated 180 0 positioned ^ ^14 ^10 run summon phantom ~ ~ ~ {Tags:["vd.minion"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute rotated 270 0 positioned ^ ^14 ^10 run summon phantom ~ ~ ~ {Tags:["vd.minion"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
