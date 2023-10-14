
# fill placeholder blocks
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/disc/placeholder/place_block

# loop
scoreboard players remove #disc_generator.length_left gm4_gv_component 1
execute if score #disc_generator.length_left gm4_gv_component matches 1.. positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/disc/loop_ray
