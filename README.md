# DropInventory
1.17 (change versions by changing branches)

# What it does: 
**Protected Items:** until the owner dies again, items dropped on death are protected and immune to all damage except the void. 

**Owner-Only Pickup:** only the owner can pick up items they dropped when they died

**Auto-Sort:** sorts the items picked up by an owner into the offhand, armor, and hotbar slots they were previously in before the owner died.

# Requirements: 
DropInventory requires the gamerule `keepInventory` to be true, and the gamerule `doImmediateRespawn` to be false; the pack automatically enforces this. This datapack also forceloads the chunk `(0, 0)` and uses the position `(0, 1, 0)` for a yellow shulker box. It is advised to not allow players access to this position. If needed, this can be changed with some effort.

# Configuration: 
## In Game: 
the scoreboard value `gamerule.keepInventory dinv` can be set to 1 to allow for vanilla keepInventory behavior.
## In File: 
Configuration function file(s) exist in `data/dinv/functions/config`
## `load.mcfunction`
Score `xp.clear dinv` - whether XP is cleared from a player on death (0 - False, 1.. - True).

Score `xp.drop dinv` - whether XP is dropped from a player on death. (0 - False, 1.. - True). XP dropping is the same as vanilla XP dropping. 

Score `item.sort dinv` - whether items auto-sort into correct slots when player picks them up (0 - False, 1.. - True)

Score `item.private_owner dinv` - whether items can only be picked up by their owner (0 - False, 1.. - True)

Score `item.spread dinv` - whether items spread out when player drops them on death (0 - False, 1.. - True)

Score `item.deaths_until_unprotected dinv` - number of deaths until items dropped on death become unprotected. If 0, items are never protected. If -1, Items are always protected

Score `item.glow dinv` - whether items dropped by players on death glow (0 - False, 1.. - True)

Team color `dinv.item` - glowing outline color of items that are protected

Team color `dinv.item.unsafe` - glowing outline color of items that are not protected anymore

## `player_death_info.mcfunction`
Configuration here is simple and open-ended. Function is called when the datapack intends to display a death message to the user. Modify this to your choosing, especially if you changed other configuration.

## `world.mcfunction`
**WARNING**: Due to the nature of datapacks, it was necessary that this configuration requires much more from the user. If you change the position of the setblock, you must also change the position in the rest of the datapack. This can be accomplished by a "Replace-All" tool, such as the one in Visual Studio Code. Replace `0 1 0` with the position that you chose. This should replace 49 instances in 17 files (as of when this was written).

The following two configuration options must be changed in tandem; The setblock **MUST** take place in the forceloaded chunk.

`forceload add` - The position of the chunk that is force loaded to contain a yellow shulker box. 

`setblock yellow_shulker_box` - The position to put the yellow shulker box.

Note that chunk position is not the same as world/block position. For example, you would have to load chunk `(12, 12)` in order to place yellow_shulker_box `(200, 0, 200)`. An easy way around this is to use an `execute positioned` command, like the following example.

`execute positioned 200 0 200 run forceload add ~ ~`

`setblock 200 0 200 yellow_shulker_box`

# Closing
There are a few extra things that I might add, such as block positions existing exclusively in config files, and per-player keepInventory.

Issues are read.

Credit is not required.

This pack used a file available at https://github.com/Arcensoth/mcdata




