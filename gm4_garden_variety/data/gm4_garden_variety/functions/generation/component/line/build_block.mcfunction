
# get current pattern
execute if score $pattern.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/pattern/current_value

# set placeholder data
data remove storage gm4_garden_variety:temp placeholder
execute store result storage gm4_garden_variety:temp placeholder.current_length int 1 run scoreboard players get #builder.length.left gm4_gv_component
execute store result storage gm4_garden_variety:temp placeholder.length_left int 1 run scoreboard players get #builder.length.left gm4_gv_component
execute store result storage gm4_garden_variety:temp placeholder.current_pattern int 1 run scoreboard players get #builder.current_pattern gm4_gv_component

# build segment
scoreboard players operation #builder.segment.left gm4_gv_component = #builder.segment.set gm4_gv_component 
execute at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment

# modify rotation and update
execute if score $y.curl.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/mod/y_curl
execute if score $y.bend.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/mod/y_bend
execute if score $x.curl.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/mod/x_curl
execute if score $x.bend.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/mod/x_bend
execute store result entity @s Rotation[0] float 1 run scoreboard players get #builder.x.rotation gm4_gv_component
execute store result entity @s Rotation[1] float 1 run scoreboard players get #builder.y.rotation gm4_gv_component

# counters
scoreboard players remove #builder.length.left gm4_gv_component 1
scoreboard players add #builder.length.current gm4_gv_component 1

# debug
#tellraw @p [{"score":{"name":"$pointer.overriden","objective":"gm4_gv_component"}},"  >  ",{"score":{"name":"#builder.length.left","objective":"gm4_gv_component"}}," = ",{"score":{"name":"$pointer.location","objective":"gm4_gv_component"}}]

# pointer
execute if score $pointer.overriden gm4_gv_component matches 1 if score #builder.length.current gm4_gv_component = $pointer.location gm4_gv_component if data storage gm4_garden_variety:reference component.pointer{method:"forwards"} positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/create
execute if score $pointer.overriden gm4_gv_component matches 1 if score #builder.length.left gm4_gv_component = $pointer.location gm4_gv_component if data storage gm4_garden_variety:reference component.pointer{method:"backwards"} positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/create

# loop
execute if score #builder.length.left gm4_gv_component matches 1.. at @s if block ~ ~ ~ #gm4_garden_variety:passthrough rotated as @s run function gm4_garden_variety:generation/component/line/build_block
