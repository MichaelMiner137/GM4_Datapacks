
# components
execute if data storage gm4_garden_variety:temp component{type:"trunk"} run function gm4_garden_variety:generation/component/trunk/init_component

# clean up
kill @e[type=marker,tag=gm4_gv_generation_builder]
