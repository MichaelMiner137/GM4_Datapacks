
# spawn pointer
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pointer","gm4_gv_new"]}

# set pointer data
data remove storage gm4_garden_variety:new pointer
execute store result storage gm4_garden_variety:new pointer.x.rotation int 1 run scoreboard players get #x.rotation gm4_gv_pointer
execute store result storage gm4_garden_variety:new pointer.y.rotation int 1 run scoreboard players get #y.rotation gm4_gv_pointer
execute store result storage gm4_garden_variety:new pointer.x.bend.direction int 1 run scoreboard players get #x.bend.direction gm4_gv_pointer
execute store result storage gm4_garden_variety:new pointer.y.bend.direction int 1 run scoreboard players get #y.bend.direction gm4_gv_pointer

# store data
execute as @e[type=marker,tag=gm4_gv_generation_pointer,distance=..0.1,tag=gm4_gv_new] run function gm4_garden_variety:generation/pointer/new_pointer
