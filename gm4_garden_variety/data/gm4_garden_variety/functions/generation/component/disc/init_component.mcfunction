
data modify storage gm4_garden_variety:debug path append value "(Disc: "

# load data
function gm4_garden_variety:generation/component/disc/data/load_component

# generate
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_disc"]}
execute as @e[type=marker,tag=gm4_gv_generation_disc] at @s run function gm4_garden_variety:generation/component/disc/init_generator

data modify storage gm4_garden_variety:debug path append value ") "

# cleanup
kill @e[type=marker,tag=gm4_gv_generation_disc]
kill @e[type=marker,tag=gm4_gv_rotation_calculator_point]
