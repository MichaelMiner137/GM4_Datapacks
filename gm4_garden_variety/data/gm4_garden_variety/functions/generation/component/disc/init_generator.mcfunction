
# set base rotation
execute store result entity @s Rotation[0] float 0.01 store result score #roll_calculator.x_rotation gm4_gv_component run scoreboard players get #0 gm4_garden_variety
execute store result entity @s Rotation[1] float 0.01 store result score #roll_calculator.y_rotation gm4_gv_component run scoreboard players get #0 gm4_garden_variety

# get coords
data remove storage gm4_garden_variety:reference roll_coords
execute store result score #origin.x gm4_garden_variety run data get entity @s Pos[0] 1000
execute store result score #origin.z gm4_garden_variety run data get entity @s Pos[2] 1000
scoreboard players operation #roll_calculator.rotations_left gm4_gv_component = $radius.draws gm4_gv_component
function gm4_garden_variety:generation/component/disc/roll_rotation/loop_get_coords

# set anchor rotation
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #disc_generator.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #disc_generator.y_rotation gm4_gv_component

# get new coords
scoreboard players operation #roll_calculator.rotations_left gm4_gv_component = $radius.draws gm4_gv_component
execute rotated as @s run function gm4_garden_variety:generation/component/disc/roll_rotation/loop_rolled_rotation

# clean up
kill @s
