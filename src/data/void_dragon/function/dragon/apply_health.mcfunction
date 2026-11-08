# macro: hp = real maximum health (1..1024), now = health to start at
$attribute @s minecraft:max_health base set $(hp)
$data merge entity @s {Health:$(now)f}
