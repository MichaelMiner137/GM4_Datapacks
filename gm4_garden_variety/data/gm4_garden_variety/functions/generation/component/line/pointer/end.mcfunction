
# data
scoreboard players operation #x.rotation gm4_gv_pointer = #builder.x.rotation gm4_gv_component
scoreboard players operation #y.rotation gm4_gv_pointer = #builder.y.rotation gm4_gv_component
scoreboard players operation #x.bend.direction gm4_gv_pointer = #builder.x.bend.direction gm4_gv_component
scoreboard players operation #y.bend.direction gm4_gv_pointer = #builder.y.bend.direction gm4_gv_component
scoreboard players operation #identifier gm4_gv_pointer = $pointer.end.identifier gm4_gv_component

# check if valid
execute if score #builder.length.left gm4_gv_component = $pointer.end.offset gm4_gv_component positioned ^ ^ ^1 run function gm4_garden_variety:generation/pointer/create_pointer
