
# set rotation
execute store result entity @s Rotation[0] float 1 store result score #builder.x_rotation gm4_gv_component run scoreboard players get $x.rotation.value gm4_gv_component
execute store result entity @s Rotation[1] float 1 store result score #builder.y_rotation gm4_gv_component run scoreboard players get $y.rotation.value gm4_gv_component

# set length left
scoreboard players operation #builder.length_left gm4_gv_component = $length.value gm4_gv_component

# get current length
scoreboard players operation #builder.current_length gm4_gv_component = $length.value gm4_gv_component
scoreboard players operation #builder.current_length gm4_gv_component -= #builder.length_left gm4_gv_component
scoreboard players add #builder.current_length gm4_gv_component 1

# set rotation direction
scoreboard players set #builder.y_rotation_direction gm4_gv_component 1
scoreboard players set #builder.x_rotation_direction gm4_gv_component 1

# build
execute at @s rotated as @s run function gm4_garden_variety:generation/component/trunk/builder/build
