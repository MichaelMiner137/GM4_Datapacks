
# build segment
scoreboard players set #builder.segment_left gm4_gv_component 10
execute at @s rotated as @s run function gm4_garden_variety:generation/component/trunk/builder/build_segment

# change rotation (bend)
execute if score $y.curl.used gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/mod/y_curl
execute if score $y.bend.used gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/mod/y_bend
execute if score $x.curl.used gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/mod/x_curl
execute if score $x.bend.used gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/mod/x_bend

# update rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get #builder.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 1 run scoreboard players get #builder.y_rotation gm4_gv_component

# spawn pointer
execute if data storage gm4_garden_variety:temp component.pointer{method:"increment"} if score #builder.current_length gm4_gv_component = $pointer.value gm4_gv_component run summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pointer"]}
execute if data storage gm4_garden_variety:temp component.pointer{method:"decrement"} if score #builder.length_left gm4_gv_component = $pointer.value gm4_gv_component run summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pointer"]}
data modify entity @e[type=marker,tag=gm4_gv_generation_pointer,distance=..0.1,limit=1] Rotation set from entity @s Rotation

# loop
scoreboard players remove #builder.length_left gm4_gv_component 1
scoreboard players add #builder.current_length gm4_gv_component 1
execute if score #builder.length_left gm4_gv_component matches 1.. at @s rotated as @s run function gm4_garden_variety:generation/component/trunk/builder/build
