# context: the first air position above solid ground: move the dive marker here
execute align y run tp @n[type=marker,tag=vd.snapme] ~ ~ ~
tag @n[type=marker,tag=vd.snapme] add vd.grounded
