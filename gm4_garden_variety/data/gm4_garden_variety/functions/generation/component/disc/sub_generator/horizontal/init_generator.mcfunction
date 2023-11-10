
# set base rotation
execute store result entity @s Rotation[0] float 0.01 store result score #rotation_calculator.x_rotation gm4_gv_component run scoreboard players get #0 gm4_garden_variety
execute store result entity @s Rotation[1] float 0.01 store result score #rotation_calculator.y_rotation gm4_gv_component run scoreboard players get #0 gm4_garden_variety

# get new coords
scoreboard players operation #rotation_calculator.rotations_left gm4_gv_component = #disc_generator.draws gm4_gv_component
execute rotated as @s run function gm4_garden_variety:generation/component/disc/sub_generator/horizontal/loop_rotation
