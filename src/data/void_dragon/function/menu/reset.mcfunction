# puts every setting back to its default
scoreboard players reset dragonhealth vd.cfg
scoreboard players reset dmg_cap vd.cfg
scoreboard players reset dragon_difficulty vd.cfg
scoreboard players reset attack_frequency vd.cfg
scoreboard players reset combo_attacks vd.cfg
scoreboard players reset vanilla_attacks vd.cfg
scoreboard players reset lance_attack vd.cfg
scoreboard players reset orb_attack vd.cfg
scoreboard players reset rift_attack vd.cfg
scoreboard players reset thunder_attack vd.cfg
scoreboard players reset pull_attack vd.cfg
scoreboard players reset meteor_attack vd.cfg
scoreboard players reset vfire_attack vd.cfg
scoreboard players reset shriek_attack vd.cfg
scoreboard players reset dive_attack vd.cfg
scoreboard players reset slam_attack vd.cfg
scoreboard players reset laststand vd.cfg
scoreboard players reset brothers vd.cfg
scoreboard players reset bro_damage vd.cfg
scoreboard players reset brothers_hard vd.cfg
scoreboard players reset minions vd.cfg
scoreboard players reset wardens vd.cfg
scoreboard players reset crystal_shield vd.cfg
scoreboard players reset crystal_turrets vd.cfg
scoreboard players reset crystal_retaliation vd.cfg
scoreboard players reset tower_affixes vd.cfg
scoreboard players reset crystal_counter vd.cfg
scoreboard players reset crystal_beacon vd.cfg
scoreboard players reset dragon_block_damage vd.cfg
scoreboard players reset pearl_break vd.cfg
scoreboard players reset wings_every_kill vd.cfg
scoreboard players reset dragon_xp_multiplier vd.cfg
scoreboard players reset victory_fx vd.cfg
scoreboard players reset music_boss vd.cfg
scoreboard players reset respawn_sound vd.cfg
scoreboard players reset intro vd.cfg
scoreboard players reset dragon_trail vd.cfg
scoreboard players reset ambience vd.cfg
data remove storage void_dragon:storage settings.dragon_music_slider
function void_dragon:menu/defaults
tellraw @s {"text":"All Void Dragon settings are back to default.","color":"gray"}
function void_dragon:menu/page1
