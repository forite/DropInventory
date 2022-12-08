# Gives the next item in Query to the context player
# Called after the "first" item in a query is updated into
# an inventory slot; the rest are simply given back to the player
# It loops until there are no items left
# Do not call this function

function dinv:private/update/sbt_setup
loot give @s mine 0 1 0 minecraft:air{drop_contents:1b}

data remove storage dinv:storage Query[0]
execute if data storage dinv:storage Query[0] run function dinv:private/give_next
