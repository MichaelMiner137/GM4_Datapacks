
# spawn pointer
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pointer","gm4_gv_new"]}

# update pointer data
execute store result storage gm4_garden_variety:new pointer.x.bend.direction int 1 run scoreboard players get #x_rotation_direction gm4_gv_component
execute store result storage gm4_garden_variety:new pointer.y.bend.direction int 1 run scoreboard players get #y_rotation_direction gm4_gv_component

# store data
execute as @e[type=marker,tag=gm4_gv_generation_pointer,distance=..0.1,tag=gm4_gv_new] run function gm4_garden_variety:generation/component/split/pointer/new
