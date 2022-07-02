# Drops the contents of storage 'dinv:storage CurrentInventory' at context location

tag @s add dinv.owner
data modify storage dinv:storage CurrentOwner set from entity @s UUID

execute if data storage dinv:storage CurrentInventory[0] run function dinv:private/drop_one_item

execute if score xp.drop dinv matches 1.. run function dinv:drop_xp
execute if score xp.clear dinv matches 1.. run function dinv:clear_xp

clear @s

tag @s remove dinv.owner
