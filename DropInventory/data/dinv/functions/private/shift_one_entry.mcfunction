# For dinv:get_entry_by_id
# Loop to rotate storage 'dinv:storage Players'
# Do not call this function

data modify storage dinv:storage Players append from storage dinv:storage Players[0]
data remove storage dinv:storage Players[0]

function dinv:get_entry_by_id