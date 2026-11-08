# context: where one of the dragon's attacks hits. Ender pearls lying nearby shatter (stops pearl farming).
execute if score pearl_break vd.cfg matches 1 as @e[type=item,distance=..5] if items entity @s contents minecraft:ender_pearl at @s run function void_dragon:attack/break_pearl
