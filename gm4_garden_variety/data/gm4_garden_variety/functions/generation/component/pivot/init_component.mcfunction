
data modify storage gm4_garden_variety:debug path append value "(Pivot: "

# load data
function gm4_garden_variety:generation/component/pivot/load_data

# generate
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pivot"]}
execute as @e[type=marker,tag=gm4_gv_generation_pivot] at @s run function gm4_garden_variety:generation/component/pivot/init_generator

data modify storage gm4_garden_variety:debug path append value ") "
