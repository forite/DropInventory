# Moves entry with id of score '@s dinv.id' to the front of storage 'dinv:storage Players'
# If not called by a registered player, the ID should be checked afterwards to ensure this operation was successful

# Score '@s dinv.id' - the id this function is searching for
# Score 'id.check dinv' - the id of the current first entry in Players

execute store result score id.check dinv run data get storage dinv:storage Players[0].id 1.0

execute unless score id.check dinv = @s dinv.id run function dinv:private/shift_one_entry
