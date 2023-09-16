
data modify storage gm4_garden_variety:debug path append value "(Split: "

# load data
function gm4_garden_variety:generation/component/split/load_data

# pointer
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_split"]}
execute as @e[type=marker,tag=gm4_gv_generation_split] at @s run function gm4_garden_variety:generation/component/split/create_pointer
kill @e[type=marker,tag=gm4_gv_generation_split]
#function gm4_garden_variety:generation/component/split/create_pointer

data modify storage gm4_garden_variety:debug path append value ") "
