
scoreboard players operation #x.curl.value.checked gm4_gv_component = $x.curl.value gm4_gv_component

execute if score $x.curl.start gm4_gv_component matches 1.. if score #line_marker.length_current gm4_gv_component < $x.curl.start gm4_gv_component run scoreboard players set #x.curl.value.checked gm4_gv_component 0
execute if score $x.curl.stop gm4_gv_component matches 1.. if score #line_marker.length_current gm4_gv_component > $x.curl.stop gm4_gv_component run scoreboard players set #x.curl.value.checked gm4_gv_component 0

scoreboard players operation $x.bend.value gm4_gv_component += #x.curl.value.checked gm4_gv_component
