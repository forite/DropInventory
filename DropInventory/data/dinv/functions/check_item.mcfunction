# Checks as all protected items if it should still be protected

scoreboard players set timer.item dinv 21

execute unless score item.deaths_until_unprotected dinv matches ..-1 as @e[type=item,tag=dinv.item.fresh] run function dinv:private/check_one_item