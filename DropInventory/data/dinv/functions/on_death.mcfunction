# Deletes the context player's inventory and drops it at context location

function dinv:get_entry_by_id

data modify storage dinv:storage Players[0].LastInventory set from entity @s Inventory
data modify storage dinv:storage CurrentInventory set from storage dinv:storage Players[0].LastInventory

function dinv:drop_inventory

function dinv:config/player_death_info

scoreboard players reset @s dinv.death