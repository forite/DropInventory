scoreboard objectives add dinv dummy

# dinv.death - tracks when a player dies. Resets
scoreboard objectives add dinv.death deathCount

# dinv.death.total - total player death, used to determine when to make items unprotected
scoreboard objectives add dinv.death.total deathCount

# dinv.id - player id'ing for player storage and item-player linkage
scoreboard objectives add dinv.id dummy

# Item glow outline teams
team add dinv.item
team add dinv.item.unsafe

# xp constants
scoreboard players set xp.lvl_multiply dinv 7
scoreboard players set xp.points_max dinv 100

function dinv:config/load
function dinv:config/world

scoreboard players set dinv.loaded dinv 1