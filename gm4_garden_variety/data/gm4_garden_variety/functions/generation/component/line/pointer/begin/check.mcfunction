
scoreboard players remove #line_generator.length_current gm4_gv_component 1
execute unless score $pointer.begin.offset gm4_gv_component matches -1 if score #line_generator.length_current gm4_gv_component = $pointer.begin.offset gm4_gv_component positioned ^ ^ ^ run function gm4_garden_variety:generation/component/line/pointer/begin/success
scoreboard players add #line_generator.length_current gm4_gv_component 1
