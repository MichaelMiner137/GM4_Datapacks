# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items


##### INITIALIZE #####

# visuals
playsound minecraft:block.note_block.snare block @a[distance=..20] ~ ~ ~ 1 0
particle minecraft:angry_villager ~ ~1 ~

# copy nbt to storage
data modify block ~ ~ ~ Items set from block ~ ~ ~ Items



##### SLOT MODIFICATIONS #####

### slot 0 ### (paper)
# move items from slot 0 to slot 2 (paper)
data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b

### slot 2 ### (paper)
# delete all lore
data remove block ~ ~ ~ Items[{Slot:2b}].tag.display.Lore
# append trait lore
data modify block ~ ~ ~ Items[{Slot:2b}].tag.display.Lore append value '[{"text":"Error: ","color":"gray","italic":false},{"text":"Traits Disabled","color":"gray","italic":false}]'
# add used tag
data modify block ~ ~ ~ Items[{Slot:2b}].tag.gm4_garden_variety.analyzer.used set value 1b

