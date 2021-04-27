# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items



##### INITIALIZE #####

# initialize
playsound minecraft:block.note_block.bell block @a[distance=..10]
advancement grant @a[distance=..10] only gm4:analyzer
data modify block ~ ~ ~ CookTime set value 0s
tag @s remove gm4_gv_analyzing

# get trait data
data modify storage gm4_garden_variety:data/item/garden_variety Traits set from storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.traits
function gm4_garden_variety:storage_data/get/garden_variety_nbt

# copy nbt to storage
data modify storage gm4_garden_variety:data/analyzer/modify Items set from block ~ ~ ~ Items

# get amount
scoreboard players operation slot_0_amount_unused gm4_gv_analyze = slot_0_amount gm4_gv_analyze
scoreboard players operation slot_0_amount_unused gm4_gv_analyze -= slot_1_amount gm4_gv_analyze

##### SLOT MODIFICATIONS #####

### slot 0 ### (name tag)
# delete item
execute store result storage gm4_garden_variety:data/analyzer/modify Items[{Slot:0b}].Count byte 1 run scoreboard players get slot_0_amount_unused gm4_gv_analyze

### slot 1 ### (sapling)
# move items from slot 1 to slot 2 (paper)
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].Slot set value 2b

### slot 2 ### (sapling)
# add spacer and header lore
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.display.Lore append value '{"text":"             "}'
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.display.Lore append value '{"text":"Name Tag","color":"#CFAE6D","italic":false}'
# append trait lore
function gm4_garden_variety:storage_data/modify/trait_lore
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.display.Lore append from storage gm4_garden_variety:data/modify/lore Lore[]
# add tagged tag
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.gm4_garden_variety.analyzer.tagged set value 1b



##### FINALIZE #####

# copy storage to nbt
data modify block ~ ~ ~ Items set from storage gm4_garden_variety:data/analyzer/modify Items
