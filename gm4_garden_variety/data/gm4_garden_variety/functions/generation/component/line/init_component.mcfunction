
# load data
function gm4_garden_variety:generation/component/line/load_component_data

data modify storage gm4_garden_variety:debug path append value "(Line: "

#  generate
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_line"]}
execute as @e[type=marker,tag=gm4_gv_generation_line] at @s run function gm4_garden_variety:generation/component/line/init_generator

data modify storage gm4_garden_variety:debug path append value ") "
