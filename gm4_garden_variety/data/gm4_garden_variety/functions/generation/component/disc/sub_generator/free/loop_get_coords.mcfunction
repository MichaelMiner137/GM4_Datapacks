
# move forward
tp 0 0 0
execute at @s run tp ^ ^ ^100

# get coords
execute store result score #diff.x gm4_garden_variety run data get entity @s Pos[0] 1
execute store result score #diff.z gm4_garden_variety run data get entity @s Pos[2] 1

# create list
execute store result storage gm4_garden_variety:new roll_coords_entry.x int 1 run scoreboard players get #diff.x gm4_garden_variety
execute store result storage gm4_garden_variety:new roll_coords_entry.z int 1 run scoreboard players get #diff.z gm4_garden_variety
data modify storage gm4_garden_variety:new roll_coords_entry.skip set value 0
data modify storage gm4_garden_variety:reference roll_coords append from storage gm4_garden_variety:new roll_coords_entry

# tp back
tp ~ ~ ~

# modify rotation
scoreboard players operation #rotation_calculator.x_rotation gm4_gv_component += #disc_generator.rotation_degrees gm4_gv_component
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #rotation_calculator.x_rotation gm4_gv_component

# loop
scoreboard players remove #rotation_calculator.rotations_left gm4_gv_component 1
execute if score #rotation_calculator.rotations_left gm4_gv_component matches 1.. at @s rotated as @s run function gm4_garden_variety:generation/component/disc/sub_generator/free/loop_get_coords
