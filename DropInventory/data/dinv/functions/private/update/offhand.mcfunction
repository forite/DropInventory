data modify storage dinv:storage Query set value []
data modify storage dinv:storage Query append from storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:-106b}}}]

function dinv:private/update/sbt_setup
loot replace entity @s weapon.offhand 1 mine 0 1 0 minecraft:air{drop_contents:1b}

data remove storage dinv:storage Query[0]
execute if data storage dinv:storage Query[0] run function dinv:private/give_next

clear @s #dinv:all{dinv:{Slot:-106b}}
execute if data storage dinv:storage WorkingInventory[{Slot:-106b}] unless data storage dinv:storage WorkingInventory[{Slot:-106b,tag:{dinv:{}}}] run data modify storage dinv:storage Restore append from storage dinv:storage WorkingInventory[{Slot:-106b}] 
