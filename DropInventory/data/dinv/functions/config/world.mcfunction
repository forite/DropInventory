######################################################################
# CONFIGURATION
# WARNING: Due to the nature of datapacks, it was necessary that this configuration 
# requires much more from the user. If you change the position of the setblock, 
# you must also change the position in the rest of the datapack. 
# This can be accomplished by a "Replace-All" tool, such as the one 
# in Visual Studio Code. Replace 0 1 0 with the position that you chose. 
# This should replace 49 instances in 17 files (as of when this was written).
#
# The following two configuration options must be changed in tandem; 
# The setblock MUST take place in the forceloaded chunk.
#
forceload add 0 0
setblock 0 1 0 yellow_shulker_box
#
# Note that chunk position is not the same as world/block position. 
# For example, you would have to load chunk (12, 12) in order to place 
# yellow_shulker_box (200, 0, 200). 
# An easy way around this is to use an execute positioned command, 
# like the following example.
# execute positioned 200 0 200 run forceload add ~ ~
# setblock 200 0 200 yellow_shulker_box
######################################################################