# context: as/at a dive marker. Drops it onto the first solid block below it (searches up to 48 blocks).
# Tags it vd.grounded when ground was found; if there is none (over the void) it stays put, untagged.
tag @s remove vd.grounded
tag @s add vd.snapme
scoreboard players set #g vd.tmp 48
function void_dragon:attack/dive/ground_scan
tag @s remove vd.snapme
