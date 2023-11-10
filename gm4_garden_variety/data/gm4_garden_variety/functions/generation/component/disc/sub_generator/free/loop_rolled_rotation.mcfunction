
# set placeholder data
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/disc/placeholder/set_stored_data

# skip factors
function gm4_garden_variety:generation/component/disc/sub_generator/skip_factors
execute store result storage gm4_garden_variety:reference roll_coords[0].skip int 1 run scoreboard players get #rotation_calculator.skip_count gm4_gv_component

# ray
function gm4_garden_variety:generation/component/disc/sub_generator/free/init_ray with storage gm4_garden_variety:reference roll_coords[0]
data remove storage gm4_garden_variety:reference roll_coords[0]

# loop
scoreboard players remove #rotation_calculator.rotations_left gm4_gv_component 1
execute if score #rotation_calculator.rotations_left gm4_gv_component matches 1.. at @s rotated as @s run function gm4_garden_variety:generation/component/disc/sub_generator/free/loop_rolled_rotation
