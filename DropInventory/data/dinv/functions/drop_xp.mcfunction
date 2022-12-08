# Drops the context player's XP at context location, using vanilla XP drop formula

execute store result score xp.current dinv run xp query @s levels
scoreboard players operation xp.current dinv *= xp.lvl_multiply dinv
scoreboard players operation xp.current dinv < xp.points_max dinv

summon experience_orb ~ ~ ~ {Invulnerable:1b,Tags:["dinv.xp","dinv.xp.this"],Count:1} 
execute as @e[type=experience_orb,tag=dinv.xp.this,distance=..1,limit=1] at @s run function dinv:private/drop_xp/as_xp
