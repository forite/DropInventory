# Modifies the item entity to retain information about which slot it should be returned to upon being picked up
# Do not call this function

data modify storage dinv:storage CurrentSlot set from storage dinv:storage CurrentInventory[0].Slot

execute if data storage dinv:storage {CurrentSlot:-106b} run data modify entity @s Item.tag.dinv.Slot set value -106b

execute if data storage dinv:storage {CurrentSlot:100b} run data modify entity @s Item.tag.dinv.Slot set value 100b
execute if data storage dinv:storage {CurrentSlot:101b} run data modify entity @s Item.tag.dinv.Slot set value 101b
execute if data storage dinv:storage {CurrentSlot:102b} run data modify entity @s Item.tag.dinv.Slot set value 102b
execute if data storage dinv:storage {CurrentSlot:103b} run data modify entity @s Item.tag.dinv.Slot set value 103b

execute if data storage dinv:storage {CurrentSlot:0b} run data modify entity @s Item.tag.dinv.Slot set value 0b
execute if data storage dinv:storage {CurrentSlot:1b} run data modify entity @s Item.tag.dinv.Slot set value 1b
execute if data storage dinv:storage {CurrentSlot:2b} run data modify entity @s Item.tag.dinv.Slot set value 2b
execute if data storage dinv:storage {CurrentSlot:3b} run data modify entity @s Item.tag.dinv.Slot set value 3b
execute if data storage dinv:storage {CurrentSlot:4b} run data modify entity @s Item.tag.dinv.Slot set value 4b
execute if data storage dinv:storage {CurrentSlot:5b} run data modify entity @s Item.tag.dinv.Slot set value 5b
execute if data storage dinv:storage {CurrentSlot:6b} run data modify entity @s Item.tag.dinv.Slot set value 6b
execute if data storage dinv:storage {CurrentSlot:7b} run data modify entity @s Item.tag.dinv.Slot set value 7b
execute if data storage dinv:storage {CurrentSlot:8b} run data modify entity @s Item.tag.dinv.Slot set value 8b