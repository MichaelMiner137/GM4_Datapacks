
# get middle point
scoreboard players operation #builder.middle.distance gm4_gv_component = $length.value gm4_gv_component
scoreboard players operation #builder.middle.distance gm4_gv_component /= #2 gm4_garden_variety
scoreboard players operation #builder.middle.distance gm4_gv_component -= #builder.length.current gm4_gv_component


# data
scoreboard players operation #x.rotation gm4_gv_pointer = #builder.x.rotation gm4_gv_component
scoreboard players operation #y.rotation gm4_gv_pointer = #builder.y.rotation gm4_gv_component
scoreboard players operation #x.bend.direction gm4_gv_pointer = #builder.x.bend.direction gm4_gv_component
scoreboard players operation #y.bend.direction gm4_gv_pointer = #builder.y.bend.direction gm4_gv_component
scoreboard players operation #identifier gm4_gv_pointer = $pointer.middle.identifier gm4_gv_component

# check if valid
execute if score #builder.middle.distance gm4_gv_component = $pointer.middle.offset gm4_gv_component positioned ^ ^ ^1 run function gm4_garden_variety:generation/pointer/create_pointer
