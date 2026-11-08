# context: the dragon, once per second: a player standing on top of an outer tower earns TOWER CLIMBER
execute as @e[type=marker,tag=vd.tall] at @s as @a[gamemode=!creative,gamemode=!spectator,distance=..4.5,nbt={OnGround:1b},advancements={void_dragon:tower_climber=false}] run advancement grant @s only void_dragon:tower_climber
