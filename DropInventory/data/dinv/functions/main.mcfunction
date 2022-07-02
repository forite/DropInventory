# Main function loop for DropInventory; ran every tick
# There are no other function chains (advancement rewards, etc.)

gamerule keepInventory true
gamerule doImmediateRespawn false

execute as @a at @s run function dinv:as_player

# Item check every second since it's an @e call and not immediately necessary
# Items have to be checked like this because they may be unloaded when a player dies elsewhere
execute unless score timer.item dinv matches 1.. run function dinv:check_item
execute if score timer.item dinv matches 1.. run scoreboard players remove timer.item dinv 1