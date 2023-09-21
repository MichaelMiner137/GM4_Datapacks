
scoreboard players operation #curl.x.value.checked gm4_gv_component = $curl.x.value gm4_gv_component

execute if score $curl.x.start gm4_gv_component matches 1.. if score #line_generator.length_current gm4_gv_component < $curl.x.start gm4_gv_component run scoreboard players set #curl.x.value.checked gm4_gv_component 0
execute if score $curl.x.stop gm4_gv_component matches 1.. if score #line_generator.length_current gm4_gv_component > $curl.x.stop gm4_gv_component run scoreboard players set #curl.x.value.checked gm4_gv_component 0

scoreboard players operation $bend.x.value gm4_gv_component += #curl.x.value.checked gm4_gv_component
