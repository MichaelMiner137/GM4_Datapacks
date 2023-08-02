
scoreboard players remove #line_marker.length_left gm4_gv_component 1
execute unless score $pointer.end.offset gm4_gv_component matches -1 if score #line_marker.length_left gm4_gv_component = $pointer.end.offset gm4_gv_component positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/end/success
scoreboard players add #line_marker.length_left gm4_gv_component 1
