tag @s add vd.warded
summon phantom ~ ~10 ~ {Tags:["vd.warden","vd.minion"],PersistenceRequired:1b,CustomName:{"text":"Cage Warden","color":"gray"},Health:30.0f,attributes:[{id:"minecraft:max_health",base:30.0d}],DeathLootTable:"minecraft:empty"}
particle reverse_portal ~ ~6 ~ .5 .5 .5 .2 40 force @a[distance=..96]
execute positioned ~ ~8 ~ as @n[type=phantom,tag=vd.warden,distance=..12] run function void_dragon:towers/warden_home
