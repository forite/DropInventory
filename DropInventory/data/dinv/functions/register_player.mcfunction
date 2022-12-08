# Registers the context player with an ID and a list entry in data storage

execute unless score id.next dinv matches 1.. run scoreboard players set id.next dinv 1
scoreboard players operation @s dinv.id = id.next dinv
scoreboard players add id.next dinv 1

data modify storage dinv:storage Players prepend value {LastInventory:[],id:-1}
execute store result storage dinv:storage Players[0].id int 1.0 run scoreboard players get @s dinv.id

tag @s add dinv.registered