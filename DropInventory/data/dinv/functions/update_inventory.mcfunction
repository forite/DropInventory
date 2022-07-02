# Sorts inventory, putting armor/offhand/hotbar into correct places

data modify storage dinv:storage WorkingInventory set from entity @s Inventory
data modify storage dinv:storage Restore set value []

execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:-106b}}}] run function dinv:private/update/offhand

execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:100b}}}] run function dinv:private/update/feet
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:101b}}}] run function dinv:private/update/legs
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:102b}}}] run function dinv:private/update/chest
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:103b}}}] run function dinv:private/update/head

execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:0b}}}] run function dinv:private/update/hotbar/one
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:1b}}}] run function dinv:private/update/hotbar/two
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:2b}}}] run function dinv:private/update/hotbar/three
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:3b}}}] run function dinv:private/update/hotbar/four
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:4b}}}] run function dinv:private/update/hotbar/five
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:5b}}}] run function dinv:private/update/hotbar/six
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:6b}}}] run function dinv:private/update/hotbar/seven
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:7b}}}] run function dinv:private/update/hotbar/eight
execute if data storage dinv:storage WorkingInventory[{tag:{dinv:{Slot:8b}}}] run function dinv:private/update/hotbar/nine

# Restoring old items if wiped by updating
execute if data storage dinv:storage Restore[0] run function dinv:private/update/restore

advancement revoke @s only dinv:dinv_changed