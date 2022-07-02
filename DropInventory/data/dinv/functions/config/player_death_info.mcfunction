# Displays death information to context player

######################################################################
# CONFIGURATION
# This message (or set of messages, potentially conditional) are sent to
# to a player that dies and drops their inventory
# Change this message to suit your needs, and to reflect any changes to
# config you did! 
tellraw @s ["",{"text":"[Notice]: The items you dropped are ","color":"gold"},{"text":"protected","color":"green"},{"text":", and cannot be destroyed by anything except ","color":"gold"},{"text":"the void","color":"red"},{"text":". If you die again, these items will ","color":"gold"},{"text":"no longer be protected","color":"red"},{"text":". Items dropped on death will ","color":"gold"},{"text":"never despawn","color":"green"},{"text":", so no urgency is needed. ","color":"gold"},{"text":"\n "}]
######################################################################