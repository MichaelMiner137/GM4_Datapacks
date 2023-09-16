
# load data
function gm4_garden_variety:generation/component/line/load_data

data modify storage gm4_garden_variety:debug path append value "(Line: "

# reset pointer counters
scoreboard players reset #pointer_counter.begin gm4_gv_component
scoreboard players reset #pointer_counter.middle gm4_gv_component
scoreboard players reset #pointer_counter.end gm4_gv_component
scoreboard players reset #pointer_counter.fill gm4_gv_component
scoreboard players reset #pointer_counter.pattern gm4_gv_component
scoreboard players reset #pointer_counter.random gm4_gv_component

#  generate
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_line"]}
execute as @e[type=marker,tag=gm4_gv_generation_line] at @s run function gm4_garden_variety:generation/component/line/init_builder

data modify storage gm4_garden_variety:debug path append value ") "
