# Common-use shulker box trick setup (Before refactoring, this duplicate was present in about 15 files)
# Do not call this function

# Remove dinv tag, remove item tag NBT if it becomes empty from this
data remove storage dinv:storage Query[0].tag.dinv
data modify storage dinv:temp tag set from storage dinv:storage Query[0].tag
execute store result score fix.empty_tag dinv run data modify storage dinv:temp tag set value {}
execute if score fix.empty_tag dinv matches 0 run data remove storage dinv:storage Query[0].tag

# Move to shulker box
data modify storage dinv:storage Query[0] merge value {Slot:0b}
data remove block 0 1 0 Items
data modify block 0 1 0 Items append from storage dinv:storage Query[0]

# For context, a function call to this function will be followed by
# completion of the shulker box trick (the exact usage depending on context)