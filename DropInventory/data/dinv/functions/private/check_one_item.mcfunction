# Checks if item should no longer be protected
# Based on if the ID-linked player has died more since it dropped
# Do not call this function

scoreboard players reset item.unsafe dinv

scoreboard players operation item.id dinv = @s dinv.id

# Sets item.death to the min total deaths that will result in this item becoming unsafe
scoreboard players operation item.death dinv = @s dinv.death
scoreboard players operation item.death dinv += item.deaths_until_unprotected dinv
scoreboard players remove item.death dinv 1

execute as @a if score @s dinv.id = item.id dinv if score @s dinv.death.total >= item.death dinv run scoreboard players set item.unsafe dinv 1
execute if score item.unsafe dinv matches 1.. run function dinv:private/check_one_item/make_unsafe