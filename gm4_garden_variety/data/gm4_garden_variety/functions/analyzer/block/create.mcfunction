# Called from recipe_check

# Change block from Custom Crafter to Trash Can
clone ~ ~1 ~ ~ ~1 ~ ~ ~ ~ replace
setblock ~ ~1 ~ air
data merge block ~ ~ ~ {CustomName:'{"translate":"%1$s%3427655$s","with":["Analyzer",{"translate":"block.gm4.gv_analyzer"}]}'}
data merge entity @s {CustomName:'"gm4_gv_analyzer"',ArmorItems:[{},{},{},{id:"minecraft:green_stained_glass",Count:1b,tag:{CustomModelData:1}}]}

# get id
execute store result score @s gm4_gv_entity_id run data get entity @s UUID[1]

# Visuals
playsound minecraft:block.beehive.enter block @a[distance=..5]

# Change Tag
tag @s add gm4_gv_analyzer
tag @s remove gm4_custom_crafter
