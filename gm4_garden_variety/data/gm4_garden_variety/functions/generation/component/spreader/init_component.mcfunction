
# load data
function gm4_garden_variety:generation/component/spreader/load_data

# spawn spreader
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_spreader"]}

#  generate
execute as @e[type=marker,tag=gm4_gv_generation_spreader] at @s run function gm4_garden_variety:generation/component/spreader/init_spreader
