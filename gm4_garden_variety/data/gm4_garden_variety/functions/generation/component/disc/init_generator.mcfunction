
# sub generators
execute if data storage gm4_garden_variety:reference component.general{rotation:"horizontal"} run function gm4_garden_variety:generation/component/disc/sub_generator/horizontal/init_generator
execute if data storage gm4_garden_variety:reference component.general{rotation:"free"} run function gm4_garden_variety:generation/component/disc/sub_generator/free/init_generator

# clean up
kill @s
