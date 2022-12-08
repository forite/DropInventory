# Gives the last inventory to you

function dinv:get_entry_by_id

data modify storage dinv:storage GiveInventory set from storage dinv:storage Players[0].LastInventory
execute if data storage dinv:storage GiveInventory[0] run function dinv:dev/private/do_one_item

