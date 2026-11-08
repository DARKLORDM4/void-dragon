# runs every tick while the boost window is open (the dragon is dying + 15 s after it disappears)
scoreboard players remove xp_boost_timer vd.state 1
#first kill drops big orbs (vanilla 12000 xp), a repeat kill only small ones (vanilla 500 xp)
execute in the_end positioned 0 80 0 as @e[type=experience_orb,tag=!vd.xp,distance=..160] run function void_dragon:reward/xp/peek
execute in the_end positioned 0 80 0 as @e[type=experience_orb,tag=!vd.xp,distance=..160] at @s run function void_dragon:reward/xp/each

# SCATTER: every orb that spawns at the portal is thrown 10-15 blocks away in a random direction (so the xp is not one clump)
execute in the_end positioned 0 0 0 as @e[type=experience_orb,tag=!vd.scattered,x=-8,y=0,z=-8,dx=16,dy=256,dz=16] at @s run function void_dragon:reward/xp/scatter
