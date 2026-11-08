# context: the dragon. Towers have no shulker guards any more; this only clears guards left by an older version.
kill @e[type=shulker,tag=vd.guard]
kill @e[type=shulker,tag=vd.shieldguard]
scoreboard players set guards_done vd.state 1
