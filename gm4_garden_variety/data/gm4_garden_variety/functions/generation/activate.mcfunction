
# compile components and generate
data remove storage gm4_garden_variety:temp components
data modify storage gm4_garden_variety:temp components set from storage gm4_garden_variety:temp generation
execute if data storage gm4_garden_variety:temp components[0] run function gm4_garden_variety:generation/component/read_array
