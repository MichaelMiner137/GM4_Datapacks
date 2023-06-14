
# spawn pointer
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pointer"]}

# set pointer data
data remove storage gm4_garden_variety:temp pointer
execute store result storage gm4_garden_variety:temp pointer.x_rotation int 1 run scoreboard players get #builder.x_rotation gm4_gv_component
execute store result storage gm4_garden_variety:temp pointer.y_rotation int 1 run scoreboard players get #builder.y_rotation gm4_gv_component
execute store result storage gm4_garden_variety:temp pointer.x_rotation_direction int 1 run scoreboard players get #builder.x_rotation_direction gm4_gv_component
execute store result storage gm4_garden_variety:temp pointer.y_rotation_direction int 1 run scoreboard players get #builder.y_rotation_direction gm4_gv_component

# store data
data modify entity @e[type=marker,tag=gm4_gv_generation_pointer,distance=..0.1,limit=1] data.gm4_garden_variety.pointer set from storage gm4_garden_variety:temp pointer
data modify entity @e[type=marker,tag=gm4_gv_generation_pointer,distance=..0.1,limit=1] Rotation set from entity @s Rotation
scoreboard players operation @e[type=marker,tag=gm4_gv_generation_pointer,distance=..0.1,limit=1] gm4_gv_pointer = $pointer.identifier gm4_gv_component
