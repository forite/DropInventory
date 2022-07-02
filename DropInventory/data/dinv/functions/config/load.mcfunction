######################################################################
# CONFIGURATION
# Choose behavior of xp on player death
# 
# Whether xp is cleared from the player on death (Default 1)
# 0 - no, 1.. - yes
scoreboard players set xp.clear dinv 1
# Whether xp drops on player death. Xp dropped is the same as vanilla (Default 1)
# 0 - no, 1.. - yes
scoreboard players set xp.drop dinv 1
#
# Obviously, it makes no sense that a player drops XP but does not
# clear it, but it still remains a potential option here
######################################################################

######################################################################
# CONFIGURATION
# Chooses whether items auto-sort into correct slots when player
# picks them up (Default 1)
scoreboard players set item.sort dinv 1
######################################################################

######################################################################
# CONFIGURATION
# Chooses whether items can only be picked up by their owner or not
# (Default 1)
# 0 - No, 1 - Yes
scoreboard players set item.private_owner dinv 1
######################################################################

######################################################################
# CONFIGURATION
# Chooses whether items spread out when player dies (Default 1)
# 0 - No, 1 - Yes
scoreboard players set item.spread dinv 1
######################################################################

######################################################################
# CONFIGURATION
# Chooses the number of deaths until items dropped on death become
# unprotected. (Default 1)
# If 0, then items will never be protected
# If -1, then items will always be protected
scoreboard players set item.deaths_until_unprotected dinv 1
######################################################################

######################################################################
# CONFIGURATION
# Chooses whether items dropped by players glow (Default 1)
# 0 - No, 1 - Yes
scoreboard players set item.glow dinv 1
######################################################################

######################################################################
# CONFIGURATION
# Chooses item glow colors for items that dropped on death, and for items
# that are no longer protected
#
# Protected color
team modify dinv.item color black
# Unprotected color
team modify dinv.item.unsafe color red
######################################################################


