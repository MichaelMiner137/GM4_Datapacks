
# set rotation
execute store result entity @s Rotation[0] float 1 store result score #builder.x_rotation gm4_gv_component run scoreboard players get $x.rotation.value gm4_gv_component
execute store result entity @s Rotation[1] float 1 store result score #builder.y_rotation gm4_gv_component run scoreboard players get $y.rotation.value gm4_gv_component

# set rotation direction
scoreboard players operation #builder.x_rotation_direction gm4_gv_component = $x.bend.direction gm4_gv_component
scoreboard players operation #builder.y_rotation_direction gm4_gv_component = $y.bend.direction gm4_gv_component

# build
scoreboard players operation #builder.length_left gm4_gv_component = $length.value gm4_gv_component
scoreboard players set #builder.current_length gm4_gv_component 1
execute at @s rotated as @s run function gm4_garden_variety:generation/component/trunk/build_block
