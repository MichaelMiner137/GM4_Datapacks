
# set placeholder data
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/disc/placeholder/set_stored_data

# skip factors
function gm4_garden_variety:generation/component/disc/sub_generator/skip_factors
execute store result storage gm4_garden_variety:macro init_ray.skip int 1 run scoreboard players get #rotation_calculator.skip_count gm4_gv_component

# ray
function gm4_garden_variety:generation/component/disc/sub_generator/horizontal/init_ray with storage gm4_garden_variety:macro init_ray

# modify rotation
scoreboard players operation #rotation_calculator.x_rotation gm4_gv_component += #disc_generator.rotation_degrees gm4_gv_component
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #rotation_calculator.x_rotation gm4_gv_component

# loop
scoreboard players remove #rotation_calculator.rotations_left gm4_gv_component 1
execute if score #rotation_calculator.rotations_left gm4_gv_component matches 1.. at @s rotated as @s run function gm4_garden_variety:generation/component/disc/sub_generator/horizontal/loop_rotation
