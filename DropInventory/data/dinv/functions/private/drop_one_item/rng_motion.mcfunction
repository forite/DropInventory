# Applies random motion as if the item dropped from a dead player
# Do not call this function

scoreboard players reset item.x dinv
scoreboard players reset item.z dinv
data modify storage dinv:storage Motion set value [0.0, 0.3, 0.0]

execute if predicate dinv:50 run scoreboard players add item.x dinv 16
execute if predicate dinv:50 run scoreboard players add item.x dinv 8
execute if predicate dinv:50 run scoreboard players add item.x dinv 4
execute if predicate dinv:50 run scoreboard players add item.x dinv 2
execute if predicate dinv:50 run scoreboard players add item.x dinv 1

execute if predicate dinv:50 run scoreboard players add item.z dinv 16
execute if predicate dinv:50 run scoreboard players add item.z dinv 8
execute if predicate dinv:50 run scoreboard players add item.z dinv 4
execute if predicate dinv:50 run scoreboard players add item.z dinv 2
execute if predicate dinv:50 run scoreboard players add item.z dinv 1

scoreboard players remove item.x dinv 16
scoreboard players remove item.z dinv 16

execute store result storage dinv:storage Motion[0] double 0.012 run scoreboard players get item.x dinv
execute store result storage dinv:storage Motion[2] double 0.012 run scoreboard players get item.z dinv
data modify entity @s Motion set from storage dinv:storage Motion