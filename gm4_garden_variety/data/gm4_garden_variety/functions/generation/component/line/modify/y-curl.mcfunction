
scoreboard players operation #curl.y.value.checked gm4_gv_component = $curl.y.value gm4_gv_component

execute if score $curl.y.start gm4_gv_component matches 1.. if score #line_generator.length_current gm4_gv_component < $curl.y.start gm4_gv_component run scoreboard players set #curl.y.value.checked gm4_gv_component 0
execute if score $curl.y.stop gm4_gv_component matches 1.. if score #line_generator.length_current gm4_gv_component > $curl.y.stop gm4_gv_component run scoreboard players set #curl.y.value.checked gm4_gv_component 0

scoreboard players operation $bend.y.value gm4_gv_component += #curl.y.value.checked gm4_gv_component
