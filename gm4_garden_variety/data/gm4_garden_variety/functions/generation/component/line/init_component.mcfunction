
# load data
function gm4_garden_variety:generation/component/line/load_data

# reset pointer counters
scoreboard players reset #counter.pointer.begin gm4_gv_component
scoreboard players reset #counter.pointer.middle gm4_gv_component
scoreboard players reset #counter.pointer.end gm4_gv_component
scoreboard players reset #counter.pointer.fill gm4_gv_component
scoreboard players reset #counter.pointer.pattern gm4_gv_component
scoreboard players reset #counter.pointer.random gm4_gv_component

#  generate
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_line"]}
execute as @e[type=marker,tag=gm4_gv_generation_line] at @s run function gm4_garden_variety:generation/component/line/init_builder
