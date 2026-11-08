# macro: who = K (KETHLER) or A (VEXIS). At the spot he fell. Each piece of his gear (chestplate, leggings,
# boots, weapon) drops with 20% + 8% for every Looting level of the nearest fighter's weapon (Looting IV = 52%).
scoreboard players set #lc vd.tmp 20
execute as @p[gamemode=!spectator] if predicate void_dragon:looting/1 run scoreboard players add #lc vd.tmp 8
execute as @p[gamemode=!spectator] if predicate void_dragon:looting/2 run scoreboard players add #lc vd.tmp 8
execute as @p[gamemode=!spectator] if predicate void_dragon:looting/3 run scoreboard players add #lc vd.tmp 8
execute as @p[gamemode=!spectator] if predicate void_dragon:looting/4 run scoreboard players add #lc vd.tmp 8
execute as @p[gamemode=!spectator] if predicate void_dragon:looting/5 run scoreboard players add #lc vd.tmp 8
$function void_dragon:brothers/gear_piece {who:"$(who)",slot:"chest"}
$function void_dragon:brothers/gear_piece {who:"$(who)",slot:"legs"}
$function void_dragon:brothers/gear_piece {who:"$(who)",slot:"feet"}
$function void_dragon:brothers/gear_piece {who:"$(who)",slot:"mainhand"}
