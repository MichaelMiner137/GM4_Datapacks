
# ray
scoreboard players operation #disc_generator.length_left gm4_gv_component = #disc_generator.radius gm4_gv_component
execute at @s rotated as @s run function gm4_garden_variety:generation/component/disc/loop_ray

# modify rotation
scoreboard players add #disc_generator.x_rotation gm4_gv_component 400

# set rotation
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #disc_generator.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #disc_generator.y_rotation gm4_gv_component

# loop
scoreboard players remove #disc_generator.rotations_left gm4_gv_component 1
scoreboard players add #disc_generator.rotations_current gm4_gv_component 1
execute if score #disc_generator.rotations_left gm4_gv_component matches 1.. at @s rotated as @s run function gm4_garden_variety:generation/component/disc/loop_builder
