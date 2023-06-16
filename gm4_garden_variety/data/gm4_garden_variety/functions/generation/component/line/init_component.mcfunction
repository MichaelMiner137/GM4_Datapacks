
# load data
function gm4_garden_variety:generation/component/line/load_data

# spawn generation builder
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_builder"]}

#  generate
execute as @e[type=marker,tag=gm4_gv_generation_builder] at @s run function gm4_garden_variety:generation/component/line/init_builder
