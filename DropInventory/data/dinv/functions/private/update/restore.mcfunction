# All correctly dinv-tagged items have been processed by now, so don't restore those
# Loops for every item needing to be restored
# Do not call this function

execute unless data storage dinv:storage Restore[0].tag.dinv run function dinv:private/update/restore/do

data remove storage dinv:storage Restore[0]
execute if data storage dinv:storage Restore[0] run function dinv:private/update/restore