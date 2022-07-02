# Condtional block of function calling this
# Do not call this function

data modify storage dinv:storage Restore[0] merge value {Slot:0b}

data remove block 0 1 0 Items
data modify block 0 1 0 Items append from storage dinv:storage Restore[0]
loot give @s mine 0 1 0 minecraft:air{drop_contents:1b}