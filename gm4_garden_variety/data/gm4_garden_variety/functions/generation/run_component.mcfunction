
# components
execute if data storage gm4_garden_variety:reference component{type:"trunk"} run function gm4_garden_variety:generation/component/line/init_component
execute if data storage gm4_garden_variety:reference component{type:"split"} run function gm4_garden_variety:generation/component/split/init_component
execute if data storage gm4_garden_variety:reference component{type:"spreader"} run function gm4_garden_variety:generation/component/spreader/init_component

# clean up
kill @e[type=marker,tag=gm4_gv_generation_builder]
