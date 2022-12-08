
data modify storage dinv:storage GiveInventory[0] merge value {Slot:0b}

data remove block 0 1 0 Items
data modify block 0 1 0 Items append from storage dinv:storage GiveInventory[0]
loot give @s mine 0 1 0 minecraft:air{drop_contents:1b}

data remove storage dinv:storage GiveInventory[0]
execute if data storage dinv:storage GiveInventory[0] run function dinv:dev/private/do_one_item