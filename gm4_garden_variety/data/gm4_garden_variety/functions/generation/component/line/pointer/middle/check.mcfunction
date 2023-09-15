
scoreboard players operation #line_marker.length_middle_distance.distance gm4_gv_component = $length.value gm4_gv_component
scoreboard players operation #line_marker.length_middle_distance.distance gm4_gv_component /= #2 gm4_garden_variety
scoreboard players operation #line_marker.length_middle_distance.distance gm4_gv_component -= #line_marker.length_current gm4_gv_component
scoreboard players remove #line_marker.length_middle_distance.distance gm4_gv_component 1

execute unless score $pointer.middle.offset gm4_gv_component matches -1 if score #line_marker.length_middle_distance.distance gm4_gv_component = $pointer.middle.offset gm4_gv_component positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/middle/success
