# Make this item unprotected
# do not call this function

tag @s remove dinv.item.fresh
tag @s add dinv.item.unsafe
data merge entity @s {Invulnerable:0b}
team join dinv.item.unsafe @s