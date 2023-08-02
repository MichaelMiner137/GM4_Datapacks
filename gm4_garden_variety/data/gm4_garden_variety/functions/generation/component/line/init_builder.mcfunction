
# set pattern
execute if score $placeholder.patterns gm4_gv_component matches 1.. run data modify storage gm4_garden_variety:process placeholder_pattern set from storage gm4_garden_variety:reference component.placeholder.pattern
execute if score $pointer.pattern.identifiers gm4_gv_component matches 1.. run data modify storage gm4_garden_variety:process pointer_pattern set from storage gm4_garden_variety:reference component.pointer.pattern.identifiers

# set rotation
execute store result entity @s Rotation[0] float 0.01 store result score #line_marker.x_rotation gm4_gv_component run scoreboard players get $x.rotation.value gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 store result score #line_marker.y_rotation gm4_gv_component run scoreboard players get $y.rotation.value gm4_gv_component

# set rotation direction
scoreboard players operation #line_marker.x_bend_direction gm4_gv_component = $x.bend.direction gm4_gv_component
scoreboard players operation #line_marker.y_bend_direction gm4_gv_component = $y.bend.direction gm4_gv_component

# set segment length
execute unless score $placeholder.quality gm4_gv_component matches 2..6 run scoreboard players set #line_marker.segments_set gm4_gv_component 1
execute if score $placeholder.quality gm4_gv_component matches 2 run scoreboard players set #line_marker.segments_set gm4_gv_component 2
execute if score $placeholder.quality gm4_gv_component matches 3 run scoreboard players set #line_marker.segments_set gm4_gv_component 3
execute if score $placeholder.quality gm4_gv_component matches 4 run scoreboard players set #line_marker.segments_set gm4_gv_component 5
execute if score $placeholder.quality gm4_gv_component matches 5 run scoreboard players set #line_marker.segments_set gm4_gv_component 10
execute if score $placeholder.quality gm4_gv_component matches 6 run scoreboard players set #line_marker.segments_set gm4_gv_component 20

# build
scoreboard players operation #line_marker.length_left gm4_gv_component = $length.value gm4_gv_component
scoreboard players set #line_marker.length_current gm4_gv_component 1
execute at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_block

# clean up
kill @s
