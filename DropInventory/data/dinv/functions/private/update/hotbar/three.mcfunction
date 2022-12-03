data modify storage dinv:storage Query set value []
data modify storage dinv:storage Query append from storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:2b}}}]


data remove storage dinv:storage Query[0].tag.dinv
data modify storage dinv:temp tag set from storage dinv:storage Query[0].tag
execute store result score fix.empty_tag dinv run data modify storage dinv:temp tag set value {}
execute if score fix.empty_tag dinv matches 0 run data remove storage dinv:storage Query[0].tag
data modify storage dinv:storage Query[0] merge value {Slot:0b}

data remove block 0 1 0 Items
data modify block 0 1 0 Items append from storage dinv:storage Query[0]
loot replace entity @s hotbar.2 1 mine 0 1 0 minecraft:air{drop_contents:1b}

data remove storage dinv:storage Query[0]
execute if data storage dinv:storage Query[0] run function dinv:private/give_next

clear @s #dinv:all{dinv:{Slot:2b}}
execute if data storage dinv:storage WorkingInventory[{Slot:2b}] unless data storage dinv:storage WorkingInventory[{Slot:2b,tag:{dinv:{}}}] run data modify storage dinv:storage Restore append from storage dinv:storage WorkingInventory[{Slot:2b}] 
