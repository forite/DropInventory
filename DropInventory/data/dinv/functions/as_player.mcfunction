# Player context loop function

# Tag dinv.registered - whether the player has been registered yet

# ID Used for multiplayer compatibility in order to iterate through data storage, 
# since MCC lacks key-value mappings
execute if entity @s[tag=!dinv.registered] run function dinv:register_player

# On Death
execute unless score gamerule.keepInventory dinv matches 1.. if entity @s[tag=dinv.registered,scores={dinv.death=1..}] run function dinv:on_death

# Advancement only runs when a slot-tagged item is picked up
execute as @s[tag=dinv.registered,advancements={dinv:dinv_changed=true}] run function dinv:update_inventory
