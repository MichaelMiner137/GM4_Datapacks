
data modify storage gm4_garden_variety:debug path append value "(Spreader: "

# load data
function gm4_garden_variety:generation/component/spreader/load_data_component

# generate
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_spreader"]}
execute as @e[type=marker,tag=gm4_gv_generation_spreader] at @s run function gm4_garden_variety:generation/component/spreader/init_generator

data modify storage gm4_garden_variety:debug path append value ") "
