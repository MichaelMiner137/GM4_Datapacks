
# set rotation
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #pointer.x.rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #pointer.y.rotation gm4_gv_component

# data
data remove storage gm4_garden_variety:new pointer
execute store result storage gm4_garden_variety:new pointer.identifier int 1 run scoreboard players get $pointer.identifier gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.x.rotation int 1 run scoreboard players get #pointer.x.rotation gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.y.rotation int 1 run scoreboard players get #pointer.y.rotation gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.x.bend.direction int 1 run scoreboard players get #active_pointer.x.bend.direction gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.y.bend.direction int 1 run scoreboard players get #active_pointer.y.bend.direction gm4_gv_component

# create pointer
execute unless score #new_pointer.identifier gm4_gv_component matches -1 run function gm4_garden_variety:generation/pointer/create_pointer
