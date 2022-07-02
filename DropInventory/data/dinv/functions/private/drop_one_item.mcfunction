# Drops one item, the first one in storage 'dinv:storage CurrentInventory'
# Loops if there are more items to drop
# Do not call this function


execute if score item.glow dinv matches 1.. run summon item ~ ~0.2 ~ {Tags:["dinv.item","dinv.item.this","dinv.item.fresh"],Invulnerable:1b,Age:-32768,Item:{id:"minecraft:stone",Count:1b},Glowing:1b}
execute unless score item.glow dinv matches 1.. run summon item ~ ~0.2 ~ {Tags:["dinv.item","dinv.item.this","dinv.item.fresh"],Invulnerable:1b,Age:-32768,Item:{id:"minecraft:stone",Count:1b}}

execute as @e[type=item,tag=dinv.item.this,distance=..1,limit=1] run function dinv:private/drop_one_item/as_item

data remove storage dinv:storage CurrentInventory[0]
execute if data storage dinv:storage CurrentInventory[0] run function dinv:private/drop_one_item
