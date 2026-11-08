# two phantoms, unless 12 or more minions already live
# spawned 16 blocks above the tower and off to the side, so they start in open air instead of grinding against the cage and pillar
execute store result score #n vd.tmp if entity @e[type=phantom,tag=vd.minion]
execute if score #n vd.tmp matches ..11 run summon phantom ~4 ~16 ~4 {Tags:["vd.minion"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #n vd.tmp matches ..11 run summon phantom ~-4 ~16 ~-4 {Tags:["vd.minion"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
