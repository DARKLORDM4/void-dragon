# context: as/at a meteor marker at the moment of impact.
# A real ghast-style fireball falls from 22 blocks above. Explosion size: Normal 3 / Hard 4 / Very Hard 5, desperate phase +3.
# It cannot destroy blocks or start fires: the fight switches mob griefing off (unless you allowed block damage in the settings).
execute unless score dragon_difficulty vd.cfg matches 1.. run summon fireball ~ ~22 ~ {ExplosionPower:5,Motion:[0.0,-1.0,0.0],Tags:["vd.new_fb"]}
execute if score dragon_difficulty vd.cfg matches 1 run summon fireball ~ ~22 ~ {ExplosionPower:6,Motion:[0.0,-1.0,0.0],Tags:["vd.new_fb"]}
execute if score dragon_difficulty vd.cfg matches 2.. run summon fireball ~ ~22 ~ {ExplosionPower:7,Motion:[0.0,-1.0,0.0],Tags:["vd.new_fb"]}
# owned by the dragon: the explosion can no longer pop the tower crystals
data modify entity @e[type=fireball,tag=vd.new_fb,limit=1] Owner set from entity @n[type=ender_dragon] UUID
tag @e[type=fireball,tag=vd.new_fb] remove vd.new_fb
playsound minecraft:entity.ghast.shoot hostile @a[distance=..96] ~ ~22 ~ 4 .7
