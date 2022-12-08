# Modifying Xp value of this XP entity
# do not call this function
execute store result entity @s Value short 1.0 run scoreboard players get xp.current dinv
tag @s remove dinv.xp.this