# ============================================================
#  BROTHER HEADS
#  Paste the "Value" code from minecraft-heads.com between the quotes.
#  (On the head page: scroll to "Other" / "Value" and copy the long text.)
#  Left empty, they fall back to the MHF_Enderman head.
# ============================================================
# VEXIS (archer)  - https://minecraft-heads.com/custom-heads/head/118658-enderman
data modify storage void_dragon:storage brothers.archer_tex set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDhmYTA0NzcwZjUxYTMwZWFjMzZhNGFjMmJlMTZhNzE5Njc2YzgyZmEyZTZiYzk2OTUxODNmZTBhOWRmMTEzYiJ9fX0="
# KETHLER (knight) - https://minecraft-heads.com/custom-heads/head/111971-ender-knight
data modify storage void_dragon:storage brothers.knight_tex set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWIxYjlmNGU2ODcyZDQxMGIxZWU5N2ViN2ExYzY5NWM5NzY3YzA2NWRmMDEyOTBkMGYxODQzMGQ3OWNlN2ZhNiJ9fX0="

# health: Normal = VEXIS 80 / KETHLER 150, Hard = VEXIS 160 / KETHLER 300
data modify storage void_dragon:storage brothers.archer_hp set value 80
data modify storage void_dragon:storage brothers.knight_hp set value 150
execute if score brothers_hard vd.cfg matches 1 run data modify storage void_dragon:storage brothers.archer_hp set value 160
execute if score brothers_hard vd.cfg matches 1 run data modify storage void_dragon:storage brothers.knight_hp set value 300
execute store result score bro_kmax vd.state run data get storage void_dragon:storage brothers.knight_hp
execute store result score bro_max vd.state run data get storage void_dragon:storage brothers.archer_hp
scoreboard players operation bro_max vd.state += bro_kmax vd.state

data modify storage void_dragon:storage brothers.archer_profile set value {name:"MHF_Enderman"}
execute unless data storage void_dragon:storage brothers{archer_tex:""} run data modify storage void_dragon:storage brothers.archer_profile set value {properties:[{name:"textures",value:""}]}
execute unless data storage void_dragon:storage brothers{archer_tex:""} run data modify storage void_dragon:storage brothers.archer_profile.properties[0].value set from storage void_dragon:storage brothers.archer_tex

data modify storage void_dragon:storage brothers.knight_profile set value {name:"MHF_Enderman"}
execute unless data storage void_dragon:storage brothers{knight_tex:""} run data modify storage void_dragon:storage brothers.knight_profile set value {properties:[{name:"textures",value:""}]}
execute unless data storage void_dragon:storage brothers{knight_tex:""} run data modify storage void_dragon:storage brothers.knight_profile.properties[0].value set from storage void_dragon:storage brothers.knight_tex
