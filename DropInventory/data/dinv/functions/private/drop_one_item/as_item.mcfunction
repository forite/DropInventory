# For @s context of dropping an item
# Do not call this function

team join dinv.item @s
data modify entity @s Item set from storage dinv:storage CurrentInventory[0]

# QOL since its not as important for anyone to pick up the item at all
execute if score item.private_owner dinv matches 1.. run data modify entity @s Owner set from storage dinv:storage CurrentOwner

data modify entity @s Thrower set from storage dinv:storage CurrentOwner

scoreboard players operation @s dinv.death = @p[tag=dinv.owner] dinv.death.total
scoreboard players operation @s dinv.id = @p[tag=dinv.owner] dinv.id
scoreboard players add @s dinv.death 1

execute if score item.spread dinv matches 1.. run function dinv:private/drop_one_item/rng_motion

execute if score item.sort dinv matches 1.. run function dinv:private/drop_one_item/set_slot

tag @s remove dinv.item.this