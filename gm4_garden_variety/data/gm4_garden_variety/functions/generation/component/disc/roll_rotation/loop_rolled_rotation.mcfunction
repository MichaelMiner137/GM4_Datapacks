
# set placeholder data
execute if score $placeholder.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/disc/placeholder/set_stored_data

#tellraw @p {"nbt":"roll_coords[0]","storage":"gm4_garden_variety:reference"}

# ray
function gm4_garden_variety:generation/component/disc/roll_rotation/init_ray with storage gm4_garden_variety:reference roll_coords[0]
data remove storage gm4_garden_variety:reference roll_coords[0]

# loop
scoreboard players remove #roll_calculator.rotations_left gm4_gv_component 1
execute if score #roll_calculator.rotations_left gm4_gv_component matches 1.. at @s rotated as @s run function gm4_garden_variety:generation/component/disc/roll_rotation/loop_rolled_rotation
