# Item Restoration
# When the player's inventory is updated, the items previously in overwritten slots
# need to be restored. This excludes any item with the dinv tag, since they will
# are handled in one way or another by inventory update logic
# Loops for every item needing to be restored
# Do not call this function

# Sanity check: making absolutely sure dinv items don't get "restored", which would otherwise result in duplication
execute unless data storage dinv:storage Restore[0].tag.dinv run function dinv:private/update/restore/do

data remove storage dinv:storage Restore[0]
execute if data storage dinv:storage Restore[0] run function dinv:private/update/restore