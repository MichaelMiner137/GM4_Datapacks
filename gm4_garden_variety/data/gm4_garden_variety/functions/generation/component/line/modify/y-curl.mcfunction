
scoreboard players operation #y.curl.value.checked gm4_gv_component = $y.curl.value gm4_gv_component

execute if score $y.curl.start gm4_gv_component matches 1.. if score #line_marker.length_current gm4_gv_component < $y.curl.start gm4_gv_component run scoreboard players set #y.curl.value.checked gm4_gv_component 0
execute if score $y.curl.stop gm4_gv_component matches 1.. if score #line_marker.length_current gm4_gv_component > $y.curl.stop gm4_gv_component run scoreboard players set #y.curl.value.checked gm4_gv_component 0

scoreboard players operation $y.bend.value gm4_gv_component += #y.curl.value.checked gm4_gv_component
