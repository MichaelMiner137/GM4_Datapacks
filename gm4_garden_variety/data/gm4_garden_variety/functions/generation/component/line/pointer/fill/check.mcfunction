
execute unless score $pointer.fill.offset gm4_gv_component matches -1 if score #line_marker.length_current gm4_gv_component >= $pointer.fill.start gm4_gv_component if score #line_marker.length_current gm4_gv_component <= $pointer.fill.stop gm4_gv_component positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/fill/success
