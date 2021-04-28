# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items



##### INITIALIZE #####

# initialize
playsound minecraft:block.note_block.bell block @a[distance=..10]
advancement grant @a[distance=..10] only gm4:analyzer
data modify block ~ ~ ~ CookTime set value 0s
tag @s remove gm4_gv_analyzing

# get trait data
data modify storage gm4_garden_variety:data/garden_variety_nbt traits set from storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.traits
function gm4_garden_variety:data/convert/gv_nbt_to_scores

# set output item [required before storage]
replaceitem block ~ ~ ~ container.2 minecraft:name_tag

# copy nbt to storage
data modify storage gm4_garden_variety:data/analyzer/modify Items set from block ~ ~ ~ Items

##### SLOT MODIFICATIONS #####

### slot 0 ### (shears)
# remove durability
execute store result score slot_0_durability gm4_gv_analyze run data get storage gm4_garden_variety:data/analyzer/modify Items[{Slot:0b}].tag.Damage
scoreboard players operation slot_0_durability gm4_gv_analyze += slot_1_amount gm4_gv_analyze
execute store result storage gm4_garden_variety:data/analyzer/modify Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get slot_0_durability gm4_gv_analyze

### slot 1 ### (sapling)
# remove lore
data remove storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].tag.display.Lore[1]
data remove storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].tag.display.Lore[1]
data remove storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].tag.display.Lore[1]
data remove storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].tag.display.Lore[1]
data remove storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].tag.display.Lore[1]
data remove storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].tag.display.Lore[1]
# remove tagged tag
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].tag.gm4_garden_variety.analyzer.tagged set value 0b

### slot 2 ### (name tag)
# set amount
execute store result storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].Count byte 1 run scoreboard players get slot_1_amount gm4_gv_analyze
# append trait lore
function gm4_garden_variety:data/get/lore/traits
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.display.Lore append from storage gm4_garden_variety:data/trait_lore Lore[]
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.gm4_garden_variety.analyzer.used set value 1b




##### FINALIZE #####

# copy storage to nbt
data modify block ~ ~ ~ Items set from storage gm4_garden_variety:data/analyzer/modify Items
