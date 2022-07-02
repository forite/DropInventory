# Gives the next item in Query to the context player
# It loops until there are no items left
# Do not call this function

data remove storage dinv:storage Query[0].tag.dinv
data modify storage dinv:storage Query[0] merge value {Slot:0b}

data remove block 0 1 0 Items
data modify block 0 1 0 Items append from storage dinv:storage Query[0]
loot give @s mine 0 1 0 minecraft:air{drop_contents:1b}

data remove storage dinv:storage Query[0]
execute if data storage dinv:storage Query[0] run function dinv:private/give_next
