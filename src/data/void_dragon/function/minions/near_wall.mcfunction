# succeeds when there is a solid block within about 2 blocks of the phantom, sideways or under it
execute unless block ~2 ~ ~ #void_dragon:passable run return 1
execute unless block ~-2 ~ ~ #void_dragon:passable run return 1
execute unless block ~ ~ ~2 #void_dragon:passable run return 1
execute unless block ~ ~ ~-2 #void_dragon:passable run return 1
execute unless block ~ ~-2 ~ #void_dragon:passable run return 1
execute unless block ~1 ~1 ~1 #void_dragon:passable run return 1
execute unless block ~-1 ~-1 ~-1 #void_dragon:passable run return 1
return 0
